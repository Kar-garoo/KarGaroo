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
<div style="margin-bottom:-55px" align="right">
    <g:link class="btn btn-default" controller="forum" action="topic" params="${[topicId:thread.topic.id]}">
        <i class="fa fa-arrow-left"></i>
    </g:link>
</div>
<div class="bs-callout bs-callout-default">
    <div class="sectionTitle">
        ${thread.subject}
    </div>
    <g:each in="${comments}" var="comment">

        <div class="list-group-item">
                <b>${comment.commentBy.userName}</b>
                <span class="topicDesc">
                    <span class="tagForo"><g:formatDate date="${comment.createDate}" format="dd MMM yyyy hh:mma"/></span>
                </span>
                ${comment.body}
        </div>

    </g:each>

        <div class="comment">
            <h2>Escribe algo</h2>
            <g:form>
                <g:textArea class="form-control" name="body"></g:textArea>
                <g:hiddenField name="threadId" value="${thread.id}"/>
                <fieldset>
                    <g:actionSubmit class="btn-success" value="Comentar" action="postReply"/>
                </fieldset>
            </g:form>
        </div>

</div>
<div class="pagination">
    <g:paginate total="${numberOfComments}" params="${[threadId:thread.id]}"/>
</div>
</body>
</html>