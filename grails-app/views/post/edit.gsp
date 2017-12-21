<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 12-Dec-17
  Time: 12:36 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Post</title>
    <meta name="layout" content="dashboard"/>
</head>

<body>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2>Post - Bài viết</h2>
        <ol class="breadcrumb">
            <li>
                <a href="${createLink(controller:'dashboard')}">Dashboard</a>
            </li>
            <li>
                <a href="${createLink(controller:'post')}">Post</a>
            </li>
            <li class="active">
                <strong>${post.id ? "Edit" : "Add"}</strong>
            </li>
        </ol>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Post form</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <g:uploadForm name="category" controller="post" action="save" id="${post.id}" class="form-horizontal">
                        <div class="form-group ${hasErrors(bean: post, field: 'title', 'has-error')}">
                            <label class="col-lg-2 control-label">Tiêu đề:</label>
                            <div class="col-lg-10">
                                <input type="text" name="title" placeholder="Nhập vào tiêu đề (tối đa 255 ký tự)" class="form-control" value="${post.title}">
                                <g:hasErrors bean="${post}" field="title">
                                    <span class="help-block m-b-none">
                                        <g:renderErrors bean="${post}" field="title"/>
                                    </span>
                                </g:hasErrors>
                            </div>
                        </div>
                        <div class="form-group ${hasErrors(bean: post, field: 'url', 'has-error')}">
                            <label class="col-lg-2 control-label">URL:</label>
                            <div class="col-lg-10">
                                <input type="text" name="url" placeholder="Nhập vào url, khoảng trắng sẽ được thay thế bằng '-'" class="form-control" value="${post.url}">
                                <g:hasErrors bean="${post}" field="title">
                                    <span class="help-block m-b-none">
                                        <g:renderErrors bean="${post}" field="url"/>
                                    </span>
                                </g:hasErrors>
                            </div>
                        </div>

                        <div class="form-group ${hasErrors(bean: post, field: 'intro', 'has-error')}">
                            <label class="col-lg-2 control-label">Intro: </label>
                            <div class="col-lg-10">
                                <textarea name="intro" type="text" class="form-control" placeholder="Intro">${post.intro}</textarea>
                                <g:hasErrors bean="${post}" field="intro">
                                    <span class="help-block m-b-none">
                                        <g:renderErrors bean="${post}" field="intro"/>
                                    </span>
                                </g:hasErrors>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Ảnh: </label>
                            <div class="col-lg-10">
                                <g:if test="${post.image}">
                                    <input name="image" class="form-control" type="text" accept="image/png" value="${post.image}" onchange="$('#blah').attr('src', e.target.result);">
                                </g:if>
                                <g:else>
                                    <a href="javascript:void(0)" onclick="$('#file-name').html('');$('#select-file').click()" class="btn btn-default">Chọn file</a>
                                    <input name="image" type="file" accept="image/png" class="hide" id="select-file">
                                    <span id="file-name"></span>
                                </g:else>
                                <img id="blah" src="${post.image}" alt="Preview image" width="300px" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Thể loại: </label>
                            <div class="col-lg-10">
                                <select name="category" class="form-control">
                                    <option value="">--Chosse one--</option>
                                    <g:each in="${com.tcoinnews.Category.findAllByParentIsNull()}" var="cate">
                                        <g:render template="/category/optCategory" model="[category: cate, value: post.category, index: 0]"/>
                                    </g:each>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Tags: </label>
                            <div class="col-lg-10">
                                <input name="tags" class="tagsinput form-control" type="text" value="${post.tags}" placeholder="Nhập và enter để thêm 'tag'"/>
                            </div>
                        </div>

                        <div class="form-group ${hasErrors(bean: post, field: 'content', 'has-error')}">
                            <label class="col-lg-2 control-label">Nội dung: </label>
                            <div class="col-lg-10">
                                <g:hiddenField name="content" value="${post.content}"/>
                                <div id="summernote" class="form-control">${raw(post.content)}</div>
                                <g:hasErrors bean="${post}" field="content">
                                    <span class="help-block m-b-none">
                                        <g:renderErrors bean="${post}" field="content"/>
                                    </span>
                                </g:hasErrors>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-sm btn-outline btn-primary" type="submit"><i class="fa fa-save"></i> Lưu</button>
                                <a href="${createLink(controller: 'post')}" class="btn btn-sm btn-outline btn-warning"><i class="fa fa-times"></i> Hủy</a>
                            </div>
                        </div>
                    </g:uploadForm>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $("#select-file").on("change", function (event) {
            var file = $(this).val();
            $("#file-name").html(file)
            readURL(this);
        });
        var $summernote = $("#summernote");

        $summernote.summernote({
            toolbar: [
                ['style', ['bold', 'italic', 'underline']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['insert', ['link', 'picture']],
                ['misc', ['codeview', 'undo', 'redo', 'help']]
            ],
            disableDragAndDrop: true,
            height: 250,
            placeholder: 'Nhập nội dung vào đây...',
            callbacks: {
                onImageUpload: function (files) {
                    console.log("onImageUpload");
                    for (var i = files.length - 1; i >= 0; i--) {
                        sendFile(files[i], $summernote);
                    }
                }
            }
        });

        $('.tagsinput').tagsinput({
            tagClass: 'label label-primary'
        });

        $("button[type='submit']").on('click', function(event) {
            event.preventDefault();
            $("input[name='content']").val($summernote.summernote('code'));
            $("#category").submit()
        })

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#blah').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

        function sendFile( file) {
            var form_data = new FormData();
            form_data.append('contentImage', file);
            $.ajax({
                data: form_data,
                type: "POST",
                url: "${createLink(controller: 'media', action: 'ajaxUpload')}",
                cache: false,
                contentType: false,
                processData: false,
                success: function(resp) {
                    $summernote.summernote('insertImage', resp.url, resp.name);
                    toastr['success']("Tệp hình ảnh đã được tải lên!")
                },
                error: function(xhr, ajaxOptions, thrownError){
                    console.log(xhr.readyState + xhr.responseText);
                    toastr['eror']("Không thể tải ảnh lên!")
                }
            });
        }
    });
</script>
</body>
</html>