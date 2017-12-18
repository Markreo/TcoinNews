<!DOCTYPE html>
<html lang="en">
<head>
    <title><g:layoutTitle default="Tcoin News | Bắt kịp xu hướng - Đón đầu tương lai"/></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- @todo: fill with your company info or remove -->
    <meta name="description" content="">
    <meta name="author" content="Themelize.me">

    <!-- Bootstrap v4.0.0-beta CSS via CDN -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Plugins required on all pages NOTE: Additional non-required plugins are loaded ondemand as of AppStrap 2.5 -->

    <!-- Theme style -->
    <asset:stylesheet src="appStrap/theme-style.min.css" rel="stylesheet"/>

    <!--Your custom colour override-->
    <link href="#" id="colour-scheme" rel="stylesheet">

    <!-- Your custom override -->
    <asset:stylesheet src="appStrap/custom-style.css" rel="stylesheet"/>


    <!-- Optional: ICON SETS -->
    <!-- Iconset: Font Awesome 4.7.0 via CDN -->
    <asset:stylesheet src="css/font-awesome.min.css" rel="stylesheet"/>
    <!-- Iconset: ionicons - http://ionicons.com/ -->
    <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
    <!-- Iconset: Linearicons - https://linearicons.com/free -->
    <link href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css" rel="stylesheet">


    <!-- Le fav and touch icons - @todo: fill with your icons or remove -->
    %{--<link rel="shortcut icon" href="assets/assets/img/icons/favicon.png">--}%
    %{--<link rel="apple-touch-icon" sizes="114x114" href="assets/assets/img/icons/114x114.png">--}%
    %{--<link rel="apple-touch-icon" sizes="72x72" href="assets/assets/img/icons/72x72.png">--}%
    %{--<link rel="apple-touch-icon" href="assets/assets/img/icons/default.png">--}%


    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Rambla:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Calligraffitti' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700' rel='stylesheet' type='text/css'>

    <!--Plugin: Retina.js (high def image replacement) - @see: http://retinajs.com/-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/retina.js/1.3.0/retina.min.js"></script>
    <g:layoutHead/>
</head>

<!-- ======== @Region: body ======== -->
<body class="page page-blog navbar-layout-default">

<!-- @plugin: page loading indicator, delete to remove loader -->
<div class="page-loader" data-toggle="page-loader"></div>

<a href="#content" id="top" class="sr-only">Skip to content</a>

<!-- ======== @Region: #header ======== -->
<g:render template="/template/header"/>

<!-- ======== @Region: #content ======== -->
<g:layoutBody/>
<!--#content-->

<!-- ======== @Region: #content-below ======== -->
<g:render template="/template/content_below"/>

<!-- ======== @Region: #footer ======== -->
<g:render template="/template/footer"/>
<!--Hidden elements - excluded from jPanel Menu on mobile-->
<div class="hidden-elements jpanel-menu-exclude">
    <!--@modal - signup modal-->
    <div class="modal fade" id="signup-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">
                        Sign Up
                    </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="signup.html">
                        <div class="form-group">
                            <h5>
                                Price Plan
                            </h5>
                            <select class="form-control">
                                <option>Basic</option>
                                <option>Pro</option>
                                <option>Pro +</option>
                            </select>
                        </div>
                        <hr />

                        <h5>
                            Account Information
                        </h5>
                        <div class="form-group">
                            <label class="sr-only" for="signup-first-name">First Name</label>
                            <input type="text" class="form-control" id="signup-first-name" placeholder="First name">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-last-name">Last Name</label>
                            <input type="text" class="form-control" id="signup-last-name" placeholder="Last name">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-username">Userame</label>
                            <input type="text" class="form-control" id="signup-username" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-email">Email address</label>
                            <input type="email" class="form-control" id="signup-email" placeholder="Email address">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="signup-password">Password</label>
                            <input type="password" class="form-control" id="signup-password" placeholder="Password">
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" value="term" class="form-check-input">
                                I agree with the Terms and Conditions.
                            </label>
                        </div>
                        <hr />
                        <button class="btn btn-primary" type="submit">Sign up</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <small>Already signed up? <a href="login.html">Login here</a>.</small>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    <!--@modal - login modal-->
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">
                        Login
                    </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="/login/authenticate" method="post">
                        <div class="form-group">
                            <label class="sr-only" for="login-email">Email</label>
                            <input type="text" name="username" id="login-email" class="form-control" placeholder="Tên đăng nhập">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="login-password">Password</label>
                            <input type="password" id="login-password" name="password" class="form-control password" placeholder="Mật khẩu">
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <small>Not a member? <a href="#" class="signup">Sign up now!</a></small>
                    <br />
                    <small><a href="#">Forgotten password?</a></small>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</div>


<!--jQuery 3.2.1 via CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Popper 1.9.3 via CDN, needed for Bootstrap Tooltips & Popovers -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.9.3/umd/popper.min.js"></script>

<!-- Bootstrap v4.0.0-beta JS via CDN -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>


<!-- JS plugins required on all pages NOTE: Additional non-required plugins are loaded ondemand as of AppStrap 2.5 To disable this and load plugin assets manually simple add data-plugins-manual=true to the body tag -->

<!--Custom scripts & AppStrap API integration -->
<asset:javascript src="appStrap/custom-script.js"/>
<!--AppStrap scripts mainly used to trigger libraries/plugins -->
<asset:javascript src="appStrap/script.js"/>
</body>
</html>