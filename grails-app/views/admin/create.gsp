<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 12-Dec-17
  Time: 12:36 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Admin</title>
    <meta name="layout" content="dashboard"/>
</head>

<body>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2>Admin account - Tài khoản Admin</h2>
        <ol class="breadcrumb">
            <li>
                <a href="${createLink(controller:'dashboard')}">Dashboard</a>
            </li>
            <li>
                <a href="${createLink(controller:'admin')}">Admin</a>
            </li>
            <li class="active">
                <strong>${admin.id ? "Edit" : "Add"}</strong>
            </li>
        </ol>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>${admin.id ? "Edit" : "Add"} admin form</h5>
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
                    <g:form name="category" controller="admin" action="save" id="${admin.id}" class="form-horizontal">
                        <div class="form-group ${hasErrors(bean: admin, field: 'title', 'has-error')}">
                            <label class="col-lg-2 control-label">Tên đăng nhập:</label>
                            <div class="col-lg-10">
                                <input type="text" name="username" placeholder="Username" class="form-control" value="${admin.username}" required>
                                <g:hasErrors bean="${admin}" field="username">
                                    <span class="help-block m-b-none">
                                        <g:renderErrors bean="${admin}" field="username"/>
                                    </span>
                                </g:hasErrors>
                            </div>
                        </div>
                        <div class="form-group ${hasErrors(bean: admin, field: 'name', 'has-error')}">
                            <label class="col-lg-2 control-label">Tên:</label>
                            <div class="col-lg-10">
                                <input type="text" name="name" placeholder="Tên" class="form-control" value="${admin.name}" required>
                                <g:hasErrors bean="${admin}" field="name">
                                    <span class="help-block m-b-none">
                                        <g:renderErrors bean="${admin}" field="name"/>
                                    </span>
                                </g:hasErrors>
                            </div>
                        </div>
                        <div class="form-group ${hasErrors(bean: admin, field: 'email', 'has-error')}">
                            <label class="col-lg-2 control-label">Email:</label>
                            <div class="col-lg-10">
                                <input type="email" name="email" placeholder="Email" class="form-control" value="${admin.email}" required>
                                <g:hasErrors bean="${admin}" field="email">
                                    <span class="help-block m-b-none">
                                        <g:renderErrors bean="${admin}" field="email"/>
                                    </span>
                                </g:hasErrors>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group ${hasErrors(bean: admin, field: 'password', 'has-error')}" required>
                            <div class="col-lg-2"></div>
                            <div class="col-lg-10">
                                <g:hasErrors bean="${admin}" field="password">
                                    <span class="help-block m-b-none">
                                        <g:renderErrors bean="${admin}" field="password"/>
                                    </span>
                                </g:hasErrors>
                            </div>
                        </div>

                        <div class="form-group ${hasErrors(bean: admin, field: 'password', 'has-error')}" required>
                            <label class="col-lg-2 control-label">Mật khẩu:</label>
                            <div class="col-lg-10">
                                <input type="password" name="password" placeholder="Mật khẩu" class="form-control">
                            </div>
                        </div>
                        <div class="form-group ${hasErrors(bean: admin, field: 'password', 'has-error')}">
                            <label class="col-lg-2 control-label">Nhập lại Mật khẩu:</label>
                            <div class="col-lg-10">
                                <input type="password" name="repassword" placeholder="Xác nhận lại Mật khẩu" class="form-control">
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="form-group"><label class="col-sm-2 control-label">Enabled<br>
                                <small class="text-navy">(Có thể đăng nhập hay không?)</small></label>

                                <div class="col-sm-10">
                                    <div><label> <input name="enabled" ${admin.enabled ? 'checked' : ''} type="checkbox"></label></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-sm btn-outline btn-primary" type="submit"><i class="fa fa-save"></i> Lưu</button>
                                <a href="${createLink(controller: 'admin')}" class="btn btn-sm btn-outline btn-warning"><i class="fa fa-times"></i> Hủy</a>
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

    });
</script>
</body>
</html>