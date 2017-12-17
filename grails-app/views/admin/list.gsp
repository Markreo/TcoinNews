<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 11-Dec-17
  Time: 11:20 PM
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
            <li class="active">
                <strong>Admin</strong>
            </li>
        </ol>
    </div>
    <div class="col-sm-8">
        <div class="title-action">
            <a href="${createLink(controller: 'admin', action: 'create')}" class="btn btn-primary"><i class="fa fa-upload"></i> Thêm</a>
        </div>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">

        <div class="col-lg-12">
            <div class="ibox float-e-margins">

                <div class="ibox-title">
                    <h5>Data </h5>
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
                    <tc:message/>
                    <div class="row">
                        <div class="col-sm-3 m-b-xs">
                            <select class="input-sm form-control input-s-sm inline">
                                <option value="0">Option 1</option>
                                <option value="1">Option 2</option>
                                <option value="2">Option 3</option>
                                <option value="3">Option 4</option>
                            </select>
                        </div>
                        <div class="col-sm-6 m-b-xs">
                        </div>
                        <div class="col-sm-3">
                            <div class="input-group pull-right">
                                <input id="search-input" type="text" placeholder="Search..." class="input-sm form-control">
                            </div>
                        </div>
                    </div>
                    <table class="table table-bordered" id="aaaaaaa">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Username</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Last updated</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        Datatable.init("#aaaaaaa", "${createLink(controller: 'admin', action: 'data')}", "#search-input")
    })
</script>
</body>
</html>