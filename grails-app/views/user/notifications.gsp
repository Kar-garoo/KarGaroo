
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="layout" content="menu"/>
    <title>Notificaciones</title>
    <!--Esta linea permite agregar el layout MENU -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'profilecss.css')}" rel="stylesheet">
</head>

<body  style = "background-color: #BDBDBD">
    <g:each in="${groups}" var="group">
        <g:each in="${group.members}" var="user">
            <li>${user}</li>
        </g:each>
    </g:each>

    <g:each in="${kargaroo.User.list().groups}" var="myGroups">
        <g:each in="${myGroups}">
            <li>${it.name}</li>
        </g:each>
    </g:each>
</body>
</html>