<%@ page import="kargaroo.request.GroupRequest; kargaroo.User; kargaroo.Group" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="menu"/>
    <title>Kar-garoo ${Group.findById(groupId).name}</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'forum.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js',file: 'jquery-1.10.2.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'parallax.js')}"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
</head>
<body>
<div class="bs-callout bs-callout-default">

    <div class="header">

        <div>
            <h2>Grupo: ${Group.findById(groupId).name}</h2>
            <h2>Creado por: ${Group.findById(groupId).opener.userName}</h2>
        </div>

        <g:if test="${Group.findById(groupId).members.userName.contains(session["userSession"])}">
            <g:if test="${Group.findById(groupId).opener.userName==(session["userSession"])}">
                <g:link  action="deleteGroup" params="${[groupId:groupId]}" >
                    Borrar grupo
                </g:link>
            </g:if>
            <g:else>
                <g:link  action="leaveGroup" params="${[userName:session["userSession"],groupId:groupId]}" >
                    Salir del grupo
                </g:link>
            </g:else>

        </g:if>
        <g:else>
            <g:if test="${kargaroo.request.GroupRequest.findBySenderAndReceiverAndRequestedGroup(User.findByUserName(session["userSession"]), Group.findById(groupId).opener, Group.findById(groupId))!= null}">
Solicitud enviada
            </g:if>
            <g:else>
                <g:link  controller="Request" action="requestGroup" params="${[groupId: groupId]}" >
                    Solicitar Entrar
                </g:link>
            </g:else>

        </g:else>

    </div>

    <g:each in="${Group.findById(groupId).members}" var="member">


            <div class="list-group-item">
                <div class="item-title row">

                    <div class="col-xs-6 col-md-2" style="display: inline-block" >
                        <g:if test="${member.avatar}">
                            <img class="img-rounded img-responsive img-centered" style="height: 80px; max-width: 90px;" src="${createLink(controller:'user', action:'avatar_image', params:[user:member.userName])}">
                        </g:if>
                        <g:else>
                            <img class="img-rounded img-responsive img-centered" style="height: 80px; max-width: 90px;" alt="Profile" src="http://placehold.it/300x300">
                        </g:else>
                    </div>
                    <div class="col-xs-6 col-md-4" style="display: inline-block; vertical-align: top">

                        <h4>${member.userName}</h4>
                        Nombre: ${member.firstName} ${member.lastName}
                        <br>
                        ${member.age} años

                    </div>
                </div>

            </div>


    </g:each>

</div>





</body>
</html>