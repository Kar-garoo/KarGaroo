<%@ page import="kargaroo.request.GroupRequest; kargaroo.request.Request; kargaroo.User; kargaroo.request.RouteRequest; kargaroo.Route" %>

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

<body>
<div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-1 col-lg-10">
    <div class="panel panel-default">
${session["userSession"]}
        <div class="bs-callout bs-callout-danger">
            <h4>Mis notificaciones</h4>

            <g:each in="${kargaroo.request.Request.findAllByReceiver(User.findByUserName(session["userSession"]))}" var="request">
                <g:if test="${request.getClass().name.contains("GroupRequest")}">
                    <li class="list-group-item">Solicitud de ${request.content} ${(request as kargaroo.request.GroupRequest).requestedGroup.name.toUpperCase()} de ${request.sender.userName.toUpperCase()}
                        <g:link  action="addToGroup" params="${[groupId:(request as kargaroo.request.GroupRequest).requestedGroup.id,senderName:request.sender.userName]}" >
                            <i class="fa fa-thumbs-o-up"></i>
                        </g:link>
                        <g:link  action="declineToGroup" params="${[groupId:(request as kargaroo.request.GroupRequest).requestedGroup.id,senderName:request.sender.userName]}" >
                            <i class="fa fa-thumbs-o-down"></i>

                        </g:link>
                    </li>
                </g:if>
                <g:elseif test="${request.getClass().name.contains("RouteRequest")}">
                    <li class="list-group-item" >Solicitud de ${request.content} ${(request as kargaroo.request.RouteRequest).requestedRoute.origin.toUpperCase()} a ${(request as kargaroo.request.RouteRequest).requestedRoute.end.toUpperCase()}  de ${request.sender.userName.toUpperCase()}
                        <g:link controller="route" action="addToRoute" params="${[routeId:(request as kargaroo.request.RouteRequest).requestedRoute.id,senderName:request.sender.userName]}" >
                            <i class="fa fa-thumbs-o-up"></i>
                        </g:link>
                        <g:link   controller="route" action="declineToRoute" params="${[routeId:(request as kargaroo.request.RouteRequest).requestedRoute.id,senderName:request.sender.userName]}" >
                            <i class="fa fa-thumbs-o-down"></i>

                        </g:link>
                    </li>
                </g:elseif>
                <g:else>
                    <li class="list-group-item">Solicitud de ${request.content} de ${request.sender.userName.toUpperCase()}
                    </li>
                </g:else>




            </g:each>
        </div>


    </div>
        <div class="bs-callout bs-callout-danger">
<h4>Mis grupos</h4>
    <g:each in="${kargaroo.User.findByUserName(session["userSession"]).groups}" var="group">

        <li class="list-group-item">
            <div><h5>${group.name}</h5></div>
            <div style="color: gray">
                <g:if test="${group.opener.userName==session["userSession"]}">Administrador</g:if>
                <g:else>Miembro</g:else>
            </div>
        </li>

    </g:each>
</div>

    </div>
</body>
</html>