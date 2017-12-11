var Datatable = function () {
    var table;
    var table2;
    var ajaxParams = {};

    return {
        empty: function () {
            return this;
        },
        init: function (id, url, input, numberOfColLink, tableid2, url2) {
            ajaxParams['search'] = $(input).val();
            table = $(id).DataTable({
                "bDestroy": true,
                bAutoWidth: false,
                "bSort": false,
                "columnDefs": [{
                    "targets": 'no-sort',
                    "orderable": false
                },{
                    "targets": 'action',
                    "orderable": false
                }],
                aaSorting: [],
                "bFilter": false,
                "processing": true,
                "serverSide": true,
                bLengthChange: false,
                aLengthMenu: [20],
                "ajax": {
                    url: url, data: function (data) {
                        $.each(ajaxParams, function (key, value) {
                            data[key] = value;
                        });
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrow) {
                        if(XMLHttpRequest.status == 401) {
                            location.reload();
                        }
                        if(XMLHttpRequest.status == 500) {
                            swal("Error!", "Some thing error!", "error")
                        }
                    }
                }
            });

            if(typeof tableid2 != 'undefined') {
                table2 = $(tableid2).DataTable({
                    "bDestroy": true,
                    bAutoWidth: false,
                    "bSort": false,
                    "bFilter": false,
                    "processing": true,
                    bLengthChange: false,
                    pageLength: 50,
                    "serverSide": true,
                    "ajax": {
                        url: url2, data: function (data) {
                            $.each(ajaxParams, function (key, value) {
                                data[key] = value;
                            })
                        }
                    }
                });
                console.log("table 2")
                console.log(tableid2.toString())

                $(tableid2 + "_paginate").css("margin-top", "10px");
                $(tableid2 + "_paginate").css("float", "right");
            }


            $(id).on( 'click', 'thead th', function () {
                ajaxParams['field'] = $(this).data("attr");
            });

            $(id + "_paginate").css("margin-top", "10px");
            $(id + "_paginate").css("float", "right");

            $(input).keyup(
                $.debounce(function () {
                    ajaxParams['search'] = $(input).val();
                    table.draw();
                    return;
                }, 1000)
            );

            return table;
        },

        setAjaxParam: function (name, value) {
            ajaxParams[name] = value;
        },

        addAjaxParam: function (name, value) {
            if (!ajaxParams[name]) {
                ajaxParams[name] = [];
            }

            skip = false;
            for (var i = 0; i < (ajaxParams[name]).length; i++) { // check for duplicates
                if (ajaxParams[name][i] === value) {
                    skip = true;
                }
            }

            if (skip === false) {
                ajaxParams[name].push(value);
            }
        },

        clearAjaxParams: function (name, value) {
            ajaxParams = {};
        },

        getTable: function () {
            return table;
        },
        submit: function () {
            table.draw();
        }
    }
}();