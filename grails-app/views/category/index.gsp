<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 11-Dec-17
  Time: 2:00 AM
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
            <li class="active">
                <strong>Category</strong>
            </li>
        </ol>
    </div>

    <div class="col-sm-8">
        <div class="title-action">
            <a href="${createLink(controller: 'category', action: 'add')}" class="btn btn-primary"><i class="fa fa-plus"></i> Thêm</a>
        </div>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox ">
                <div class="ibox-title">
                    <h5>Danh sách mục Thể loại</h5>
                </div>
                <div class="ibox-content">

                    <p  class="m-b-lg">
                        <strong>Nestable</strong> is an interactive hierarchical list. You can drag and drop to rearrange the order. It works well on touch-screens.
                    </p>
                    <tc:message/>

                    <div class="dd">
                        <ol class="dd-list">
                            <g:each in="${categories}" var="cate" status="i">
                                <g:render template="/category/category" model="[category: cate, index: i + 1]"/>
                            </g:each>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).on("click", ".dd-handle", function (event) {
        var id = $(this).data("id");
       location.href = "${createLink(controller: 'category', action: 'edit')}/" + id
    });
</script>
</body>
</html>