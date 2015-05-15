<%@ page import="kargaroo.forum.DiscussionThread" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="menu"/>
    <title>Kar-garoo Foro</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'forum.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js',file: 'jquery-1.10.2.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'parallax.js')}"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>

</head>

<body>
<g:each in="${sections}" var="section">
    <div class="bs-callout bs-callout-default">
    <div class="header">
        <h2>${section.title}</h2>
    </div>
        <g:each in="${section.topics.sort { it.title }}" var="topic">

            <g:link controller="forum" action="topic" params="[topicId: topic.id]">

                <div class="list-group-item">
                    <div>
                    <div class="item-title">
                        <h4>${topic.title}</h4>
                </div>
                        <div class="item-body">
                        <div>
                            <span class="topicDesc">${topic.description}</span>
                        </div>

                        <div>
                            <span class="tagForo"><b>Discuciones</b>: ${topic.numberOfThreads}</span>
                            <span class="tagForo"><b>Comentarios</b>: ${topic.numberOfReplies}</span>
                        </div>
                    </div>
                </div>

                </div>

            </g:link>

        </g:each>
    </div>
    <!--<div class="sectionTitle">${section.title}</div>-->

</g:each>
</body>
</html>