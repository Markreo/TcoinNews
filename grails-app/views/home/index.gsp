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
                    <button type="button" class="btn btn-secondary btn-lg btn-block" id="loadmore" data-start="${posts?.size()}">Load More</button>
                </div>
            </div>
            <!--Sidebar-->
            <g:render template="/template/rightbar"/>
        </div>
    </div>
    <!--.container-->
</div>
<script>
    $(document).ready(function () {
        $(document).on("click", "#loadmore",function (event) {
            event.preventDefault();
            var self = $(this);
            var start = self.data("start");
            $.post("${createLink(controller: 'post', action: 'more')}", {start: start}, function (html) {
                self.after(html);
                self.attr("data-start", parseInt(start) + 15)
            })
        })
    });
</script>
</body>
</html>