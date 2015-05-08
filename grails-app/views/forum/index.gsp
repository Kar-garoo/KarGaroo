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
<g:each in="${sections}" var="section">
            <div class="bs-callout bs-callout-default">
                <h4>${section.title}</h4>
                <g:each in="${section.topics.sort{it.title}}" var="topic">
                    <div class="list-group-item">
                        <div>
                            <g:link controller="forum" action="topic" params="[topicId:topic.id]" >
                                ${topic.title}
                            </g:link>
                        </div>
                        <div>
                            <span class="topicDesc">${topic.description}</span>
                        </div>
                        <div >
                            <span class="tagForo"><b>Discuciones</b>: ${topic.numberOfThreads}</span>
                            <span class="tagForo"><b>Comentarios</b>: ${topic.numberOfReplies}</span>
                        </div>

                    </div>
                </g:each>
            </div>
        <!--<div class="sectionTitle">${section.title}</div>-->

</g:each>
</body>
</html>