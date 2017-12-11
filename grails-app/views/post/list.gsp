<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 11-Dec-17
  Time: 11:20 PM
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
            <li class="active">
                <strong>Post</strong>
            </li>
        </ol>
    </div>
    <div class="col-sm-8">
        <div class="title-action">
            <a href="${createLink(controller: 'post', action: 'add')}" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm</a>
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
                    <table class="table table-bordered" id="post_table">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Intro</th>
                            <th>Category</th>
                            <th>Enable</th>
                            <th>Owner</th>
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
        Datatable.init("#post_table", "${createLink(controller: 'post', action: 'data')}", "#search-input")
    })
</script>
</body>
</html>