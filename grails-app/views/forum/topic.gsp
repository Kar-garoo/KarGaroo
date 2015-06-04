<%@ page import="kargaroo.forum.DiscussionThread" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="menu"/>
    <title>Kar-garoo Foro</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'forum.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js',file: 'jquery-1.10.2.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'parallax.js')}"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
</head>
<body>

<div style="margin-bottom:-54px" align="right">
    <g:link class="btn btn-default" controller="forum" action="index" >
        <i class="fa fa-arrow-left"></i>
    </g:link>
</div>
<div class="bs-callout bs-callout-default">

    <div class="header">

        <div>
            <h2>${topic.title}</h2>
        </div>
        <div>
            <h5>${topic.description}</h5>
        </div>

    </div>
    <g:each in="${threads}" var="thread">

            <g:link controller="forum" action="thread" params="[threadId:thread.id]" >
                <div class="list-group-item">
                    <div class="item-title">

                <h4>${thread.subject}</h4>

                </div>
                    <div class="item-body">

                    <div>
                        Creado por: ${thread.opener.userName}
                        el: <g:formatDate date="${thread.createDate}" format="dd MMM yyyy"/>
                    </div>
                    <div >
                        <span class="tagForo"><b>Comentarios</b>: ${thread.numberOfReplies} </span>
                    </div>
                        </div>

                </div>
                <g:if test="${thread.opener.userName == session.userSession}">
                    <div class="deleteIco"  align="right" style="margin-top: -20px; margin-right: 5px;" >

                        <g:link  controller="forum" action="deleteThread" params="${[threadId:thread.id]}">
                            <i class="fa fa-trash"></i>
                        </g:link>

                    </div>
                </g:if>
            </g:link>

    </g:each>

    <div class="pagination">
        <g:paginate total="${numberOfThreads}" params="${[topicId:topic.id]}"/>
    </div>
</div>

<div class="bs-callout bs-callout-default">
    <div class="header">
    <h2>¿Quieres saber algo?</h2>
    </div>
    <g:form>
        <g:textField class="form-control" name="subject" placeholder="Realiza una pregunta..."></g:textField>
        <g:hiddenField name="topicId" value="${topic.id}"/>
        <fieldset>
            <g:actionSubmit class="btn-success btn" value="Discutir" action="newPost"/>
        </fieldset>
    </g:form>
</div>



</body>
</html>