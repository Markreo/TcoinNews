<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><g:layoutTitle default="Tcoin News"/></title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="css/font-awesome.min.css"/>

    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:javascript src="jquery-3.1.1.min.js"/>
    <g:layoutHead/>
</head>

<body class="">

<div id="wrapper">
    <g:render template="/dashboard/sidebar"/>
    <div id="page-wrapper" class="gray-bg">
        <g:render template="/dashboard/navbar"/>
        <g:layoutBody/>
    </div>
</div>

<!-- Mainly scripts -->

<asset:javascript src="bootstrap.min.js"/>

<asset:javascript src="plugins/metisMenu/jquery.metisMenu.js"/>
<asset:javascript src="plugins/slimscroll/jquery.slimscroll.min.js"/>


<!-- Custom and plugin javascript -->
<asset:javascript src="inspinia.js"/>
<asset:javascript src="plugins/pace/pace.min.js"/>
</body>

</html>
