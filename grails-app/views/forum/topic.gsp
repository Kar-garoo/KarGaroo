<%@ page import="kargaroo.forum.DiscussionThread" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="menu"/>
    <title>Kar-garoo Foro</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'forum.css')}" rel="stylesheet">
</head>
<body>

<div style="margin-bottom:-55px" align="right">
    <g:link class="btn btn-default" controller="forum" action="index" >
        <i class="fa fa-arrow-left"></i>
    </g:link>
</div>
<div class="bs-callout bs-callout-default">

    <div class="sectionTitle">

        <div>
            <h3>${topic.title}</h3>
        </div>
        <div>
            <span class="topicDesc">${topic.description}</span>
        </div>
        <br>
    </div>
    <g:each in="${threads}" var="thread">
        <div class="list-group-item">
            <g:link controller="forum" action="thread" params="[threadId:thread.id]" >
                ${thread.subject}
            </g:link>
            <div>
                Creado por: ${thread.opener.userName}
                el: <g:formatDate date="${thread.createDate}" format="dd MMM yyyy"/>
            </div>
            <div >
                <span class="tagForo"><b>Comentarios</b>: ${thread.numberOfReplies} </span>
            </div>
        </div>
    </g:each>



    <div class="topic">
        <h2>¿Tienes alguna duda?</h2>
        <g:form>
            <g:textField class="form-control" name="subject"></g:textField>
            <g:hiddenField name="topicId" value="${topic.id}"/>
            <fieldset>
                <g:actionSubmit class="btn-success" value="Abrir discusion" action="newPost"/>
            </fieldset>
        </g:form>
    </div>
</div>
<div class="pagination">
    <g:paginate total="${numberOfThreads}" params="${[topicId:topic.id]}"/>
</div>

</body>
</html>