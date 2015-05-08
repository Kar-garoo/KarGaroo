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
    <g:paginate total="${numberOfComments}" params="${[threadId:thread.id]}"/>
</div>
<div class="list-group-item">
    <div class="sectionTitle">
        ${thread.subject}
    </div>
    <g:each in="${comments}" var="comment">
        <div class="list-group-item">
            <div>
                <b>${comment.commentBy.userName}</b>
                <span class="topicDesc">
                    <g:formatDate date="${comment.createDate}" format="dd MMM yyyy hh:mma"/>
                </span>
            </div>
            <img class="img-rounded img-responsive img-centered center-block" src="${createLink(controller:'user', action:'avatar_image',params: [user:comment.commentBy.userName],id:comment.commentBy.ident())}" />
            ${comment.body}
        </div>
    </g:each>

        <div class="comment">
            <h2>Reply</h2>
            <g:form>
                <g:textArea name="body"></g:textArea>
                <g:hiddenField name="threadId" value="${thread.id}"/>
                <fieldset class="buttons">
                    <g:actionSubmit value="Post Comment" action="postReply"/>
                </fieldset>
            </g:form>
        </div>

</div>
<div class="pagination">
    <g:paginate total="${numberOfComments}" params="${[threadId:thread.id]}"/>
</div>
</body>
</html>