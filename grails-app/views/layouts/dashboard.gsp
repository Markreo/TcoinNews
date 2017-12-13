<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><g:layoutTitle default="Tcoin News"/></title>

    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
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
<asset:javascript src="plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"/>
</body>

</html>
