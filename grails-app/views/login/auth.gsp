<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Đăng nhập</title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="css/font-awesome.css"/>

    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style.css"/>

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name"></h1>

        </div>
        <h3>Welcome to Tcoin News</h3>
        %{--<p>Perfectly designed and precisely prepared admin theme with over 50 pages with extra new web app views.--}%
        %{--<!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->--}%
        %{--</p>--}%
        <p>Login in. To see it in action.</p>
        <form class="m-t" role="form" action="${postUrl ?: '/login/authenticate'}" method="post">
            <g:if test="${flash.message}">
                <div class="alert alert-warning fade in">
                    <button class="close" data-dismiss="alert">×</button>
                    <i class="fa-fw fa fa-warning"></i>
                    ${flash.message}
                </div>
            </g:if>
            <div class="form-group">
                <input type="text" name="${usernameParameter ?: 'username'}" class="form-control" placeholder="Username" required="" autocomplete="off" />
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Password" required="" name="${passwordParameter ?: 'password'}" id="password" autocomplete="off"/>
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">Đăng nhập</button>

            <a href="#"><small>Forgot password?</small></a>
            <p class="text-muted text-center"><small>Do not have an account?</small></p>
            <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a>
        </form>
        <p class="m-t"> <small>Inspinia we app framework base on Bootstrap 3 &copy; 2014</small> </p>
    </div>
</div>

<!-- Mainly scripts -->
<asset:javascript src="jquery-3.1.1.min.js"/>
<asset:javascript src="bootstrap.min.js"/>

</body>

</html>
