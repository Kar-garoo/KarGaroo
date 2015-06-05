<%@ page import="kargaroo.Group" %>
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
            <h2>${Group.findById(groupId).name}</h2>
            <h2>${Group.findById(groupId).opener.userName}</h2>
        </div>

    </div>
    ${Group.findById(groupId).members.size()}
    <g:each in="${Group.findById(groupId).members}" var="member">


            <div class="list-group-item">
                <div class="item-title">
                    <h4>${member.userName}</h4>




                </div>
                <div class="item-body">

                    ${member.firstName}
                </div>
            </div>


    </g:each>

</div>





</body>
</html>