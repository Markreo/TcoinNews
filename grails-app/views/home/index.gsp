<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 27-Nov-17
  Time: 11:09 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div id="content">
    <div class="container">
        <h2 class="title-divider">
            <span>Bitcoin <span class="font-weight-normal text-muted">Blog #BTC</span></span>
            <small>We love to talk!</small>
        </h2>
        <div class="row">
            <!--Blog Roll Content-->
            <div class="col-md-9 blog-roll blog-list">
                <div id="list-post">
                    <g:each in="${posts}" var="post">
                        <g:render template="/post/detail" model="[post: post]"/>
                    </g:each>
                </div>
                <div class="pagination">
                    <button type="button" class="btn btn-secondary btn-lg btn-block">Load More</button>
                </div>
            </div>
            <!--Sidebar-->
            <g:render template="/template/rightbar"/>
        </div>
    </div>
    <!--.container-->
</div>
</body>
</html>