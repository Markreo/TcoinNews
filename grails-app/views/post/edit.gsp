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
                    <g:form name="category" controller="post" action="save" id="${post.id}" class="form-horizontal">
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

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Intro: </label>
                            <div class="col-lg-10">
                                <textarea name="intro" type="text" class="form-control" placeholder="Intro">${post.intro}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Ảnh: </label>
                            <div class="col-lg-10">
                                <a href="javascript:void(0)" onclick="$('#file-name').html('');$('#select-file').click()" class="btn btn-default">Chọn file</a>
                                <input name="image" type="file" accept="image/png" class="hide" id="select-file">
                                <span id="file-name"></span>
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
                            <label class="col-lg-2 control-label">Nội dung: </label>
                            <div class="col-lg-10">
                                <textarea name="content" type="text" class="summernote form-control" placeholder="Intro">${post.intro}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-sm btn-outline btn-primary" type="submit"><i class="fa fa-save"></i> Lưu</button>
                                <a href="${createLink(controller: 'post')}" class="btn btn-sm btn-outline btn-warning"><i class="fa fa-times"></i> Hủy</a>
                            </div>
                        </div>
                    </g:form>
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
        });

        $(".summernote").summernote({
            height: '250'
        })
    });
</script>
</body>
</html>