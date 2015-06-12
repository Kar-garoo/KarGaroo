<%@ page import="kargaroo.request.GroupRequest; kargaroo.request.Request; kargaroo.User" %>

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
${session["userSession"]}
<br>
<br>
Mis grupos
    <g:each in="${kargaroo.User.findByUserName(session["userSession"]).groups}" var="group">

            <li>${group.name} :
                <g:if test="${group.opener.userName==session["userSession"]}">Administrador</g:if>
                <g:else>Miembro</g:else>
            </li>

    </g:each>
<br>
Mis notificaciones
<g:each in="${kargaroo.request.Request.findAllByReceiver(User.findByUserName(session["userSession"]))}" var="request">
    <g:if test="${request.getClass().name.contains("GroupRequest")}">
        <li>Solicitud de ${request.content} ${(request as kargaroo.request.GroupRequest).requestedGroup.name.toUpperCase()} de ${request.sender.userName.toUpperCase()}
            <g:link  action="addToGroup" params="${[groupId:(request as kargaroo.request.GroupRequest).requestedGroup.id,senderName:request.sender.userName]}" >
                aceptar
            </g:link>
            <g:link  action="declineToGroup" params="${[groupId:(request as kargaroo.request.GroupRequest).requestedGroup.id,senderName:request.sender.userName]}" >
                rechazar
            </g:link>
        </li>
    </g:if>
    <g:else>
        <li>Solicitud de ${request.content} de ${request.sender.userName.toUpperCase()}
        </li>
    </g:else>




</g:each>
<br>
Request todos los usuarios
<g:each in="${kargaroo.request.GroupRequest.list()}" var="request">


    <li>Solicitud de ${request.content} de parte de ${request.sender.userName.toUpperCase()}</li>

</g:each>


</body>
</html>