<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 11-Dec-17
  Time: 11:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Files</title>
    <meta name="layout" content="dashboard"/>
</head>

<body>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2>Files - Tập tin</h2>
        <ol class="breadcrumb">
            <li>
                <a href="${createLink(controller:'dashboard')}">Dashboard</a>
            </li>
            <li class="active">
                <strong>File</strong>
            </li>
        </ol>
    </div>
    <div class="col-sm-8">
        <div class="title-action">
            <a href="${createLink(controller: 'media', action: 'upload')}" class="btn btn-primary"><i class="fa fa-upload"></i> Tải lên</a>
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
                    <table class="table table-bordered" id="meida_table">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Slug</th>
                            <th>Type</th>
                            <th>Owner</th>
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
        Datatable.init("#meida_table", "${createLink(controller: 'media', action: 'data')}", "#search-input")
    })
</script>
</body>
</html>