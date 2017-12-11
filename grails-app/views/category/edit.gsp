<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 11-Dec-17
  Time: 8:30 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Category</title>
    <meta name="layout" content="dashboard"/>
</head>

<body>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2>Category - Thể loại</h2>
        <ol class="breadcrumb">
            <li>
                <a href="${createLink(controller:'dashboard')}">Dashboard</a>
            </li>
            <li>
                <a href="${createLink(controller:'category', action: 'index')}">Category</a>
            </li>
            <li class="active">
                <strong>${category.id ? "Edit" : "Add"}</strong>
            </li>
        </ol>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Category form</h5>
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
                    <g:form name="category" controller="category" action="save" id="${category.id}" class="form-horizontal">
                        <p>Sign in today for more expirience.</p>
                        <div class="form-group ${hasErrors(bean: category, field: 'name', 'has-error')}">
                            <label class="col-lg-2 control-label">Tên:</label>
                            <div class="col-lg-10">
                                <input type="text" name="name" placeholder="Nhập vào tên" class="form-control" value="${category.name}">

                                <g:hasErrors bean="${category}" field="name">
                                    <span class="help-block m-b-none">
                                        <g:renderErrors bean="${category}" field="name"/>
                                    </span>
                                </g:hasErrors>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Là thành phần của: </label>
                            <div class="col-lg-10">
                                <select name="parent" class="form-control">
                                    <option value="">--Chosse one--</option>
                                    <g:each in="${com.tcoinnews.Category.findAllByParentIsNull()}" var="cate">
                                        <g:render template="/category/optCategory" model="[category: cate, value: category.parent, index: 0]"/>
                                    </g:each>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <button class="btn btn-sm btn-outline btn-primary" type="submit"><i class="fa fa-save"></i> Lưu</button>
                                <a href="${createLink(controller: 'category')}" class="btn btn-sm btn-outline btn-warning"><i class="fa fa-times"></i> Hủy</a>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>