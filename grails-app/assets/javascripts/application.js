// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.1.1.js
//= require plugins/metisMenu/jquery.metisMenu.js
//= require slimscroll/jquery.slimscroll.min.js
//= require plugins/flot/jquery.flot.js
//= require plugins/flot/jquery.flot.tooltip.min
//= require plugins/flot/jquery.flot.spline.js
//= require plugins/flot/jquery.flot.resize.js
//= require plugins/flot/jquery.flot.pie.js
//= require plugins/peity/jquery.peity.min.js
//= require demo/peity-demo.js
//= require inspinia.js
//= require plugins/pace/pace.min.js
//= require plugins/jquery-ui/jquery-ui.min.js
//= require bootstrap.min
//= require plugins/gritter/jquery.gritter.min.js
//= require plugins/sparkline/jquery.sparkline.min.js
//= require demo/sparkline-demo.js
//= require plugins/chartJs/Chart.min.js
//= require plugins/toastr/toastr.min.js
//= require plugins/iCheck/icheck.min.js
//= require plugins/dataTables/jquery.dataTables.js
//= require plugins/dataTables/dataTables.bootstrap.js
//= require plugins/dataTables/dataTables.responsive.js
//= require plugins/dataTables/dataTables.tableTools.min.js
//= require debounce.js
//= require paginate.js
//= require popover.js
//= require plugins/fancybox/source/jquery.fancybox.js
//= require plugins/metisMenu/jquery.metisMenu.js
//= require plugins/slimscroll/jquery.slimscroll.min.js
//= require ace/elements.fileinput.js
//= require ace/ace.js
// = require_self
//= require cms.js
//= require plugins/colorpicker/bootstrap-colorpicker.min.js
//= require plugins/datapicker/bootstrap-datepicker.js
//= require plugins/bootstrap-tagsinput/bootstrap-tagsinput.js
//= require plugins/typeahead/bootstrap3-typeahead.min.js
//= require plugins/select2/select2.full.min.js
//= require plugins/steps/jquery.steps.min.js
//= require plugins/blueimp/jquery.blueimp-gallery.min.js
//= require plugins/jasny/jasny-bootstrap.min.js
//= require plugins/validate/jquery.validate.min.js
//= require plugins/sweetalert/sweetalert.min.js
//= require sweet-alert.js
//= require map-script.js
//= require plugins/clipboard/clipboard.min.js
//= require plugins/summernote/summernote.min.js
//= require plugins/toastr/toastr.min.js

if (typeof jQuery !== 'undefined') {
    (function($) {
        $(document).ajaxStart(function() {
            $('#spinner').fadeIn();
        }).ajaxStop(function() {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}