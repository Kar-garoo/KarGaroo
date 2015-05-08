<%@ page import="kargaroo.forum.DiscussionThread" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="menu"/>
    <title>Kar-garoo Foro</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'forum.css')}" rel="stylesheet">
</head>
<body>
<div class="pagination">
    <g:paginate total="${numberOfThreads}" params="${[topicId:topic.id]}"/>
</div>
<div class="row list-group-item">
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
</div>
<div class="pagination">
    <g:paginate total="${numberOfThreads}" params="${[topicId:topic.id]}"/>
</div>
</body>
</html>