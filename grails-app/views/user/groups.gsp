<%@ page import="kargaroo.Group" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="menu"/>
    <title>Kar-garoo Grupos</title>
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
            <h2>Grupos</h2>
        </div>

    </div>
    <g:each in="${groups}" var="group">

        <g:link  action="members" params="[groupId:group.id]" >
            <div class="list-group-item">
                <div class="item-title">
                    <h4>${group.name}</h4>

                    <h5>Creado por: ${group.opener.userName}</h5>


                </div>
                <div class="item-body">

                    ${group.description}
                </div>
            </div>
        </g:link>

    </g:each>

</div>

<div class="bs-callout bs-callout-default">
    <div class="header">
        <h2>¿Quieres crear un nuevo grupo?</h2>
    </div>
    <g:form>
        <g:textField class="form-control" name="name" placeholder="Titulo..."></g:textField>
        <g:textField class="form-control" name="description" placeholder="Descripcion..."></g:textField>

        <fieldset>
            <g:actionSubmit class="btn-success btn" value="Nuevo grupo" action="newGroup"/>
        </fieldset>
    </g:form>
</div>



</body>
</html>