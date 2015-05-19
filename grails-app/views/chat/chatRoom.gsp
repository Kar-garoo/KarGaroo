<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- agrega el Template MENU a la vista chatRoom -->
    <meta name="layout" content="menu"/>

    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>KARGAROO CHAT</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="${resource(dir: 'css',file: 'bootstrap.min.css')}" rel="stylesheet">

</head>
<body style="font-family:Verdana">
<div class="container">
    <div class="row " style="padding-top:40px;">
        <h3 class="text-center" >KARGAROO CHAT</h3>
        <br /><br />
        <div class="col-md-8">
            <div class="panel panel-info">
                <div class="panel-heading">
                    RECENT CHAT HISTORY
                </div>
                <div class="panel-body">
                    <ul class="media-list">
                        <g:each in="${listMessages}" var="i">
                            <li class="media">

                                <div class="media-body">

                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object img-circle " src= ${resource(dir: 'images', file: 'usuarioChat.jpg')} />
                                        </a>
                                        <div class="media-body" >
                                            ${i.content}
                                            <br />
                                            <small class="text-muted">${i.transmitter} | ${i.date}</small>
                                            <hr />
                                        </div>
                                    </div>

                                </div>
                            </li>
                        </g:each>
                    </ul>
                </div>

                <g:form controller="chat" action="addMessage" accept-charset="UTF-8" role="form" class="form-signin">
                    <div class="panel-footer">
                        <div class="input-group">
                            <input type="text" class="form-control" name="Message" placeholder="Enter Message" />
                            <span class="input-group-btn">
                                <button class="btn btn-info" type="button">SEND</button>
                            </span>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    ONLINE USERS
                </div>
                <div class="panel-body">
                    <ul class="media-list">

                        <li class="media">

                            <div class="media-body">

                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.png" />
                                    </a>
                                    <div class="media-body" >
                                        <h5>Alex Deo | User </h5>

                                        <small class="text-muted">Active From 3 hours</small>
                                    </div>
                                </div>

                            </div>
                        </li>
                        <li class="media">

                            <div class="media-body">

                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.gif" />
                                    </a>
                                    <div class="media-body" >
                                        <h5>Jhon Rexa | User </h5>

                                        <small class="text-muted">Active From 3 hours</small>
                                    </div>
                                </div>

                            </div>
                        </li>
                        <li class="media">

                            <div class="media-body">

                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.png" />
                                    </a>
                                    <div class="media-body" >
                                        <h5>Alex Deo | User </h5>

                                        <small class="text-muted">Active From 3 hours</small>
                                    </div>
                                </div>

                            </div>
                        </li>
                        <li class="media">

                            <div class="media-body">

                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.gif" />
                                    </a>
                                    <div class="media-body" >
                                        <h5>Jhon Rexa | User </h5>

                                        <small class="text-muted">Active From 3 hours</small>
                                    </div>
                                </div>

                            </div>
                        </li>
                        <li class="media">

                            <div class="media-body">

                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.png" />
                                    </a>
                                    <div class="media-body" >
                                        <h5>Alex Deo | User </h5>

                                        <small class="text-muted">Active From 3 hours</small>
                                    </div>
                                </div>

                            </div>
                        </li>
                        <li class="media">

                            <div class="media-body">

                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.gif" />
                                    </a>
                                    <div class="media-body" >
                                        <h5>Jhon Rexa | User </h5>

                                        <small class="text-muted">Active From 3 hours</small>
                                    </div>
                                </div>

                            </div>
                        </li>
                        <li class="media">

                            <div class="media-body">

                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.png" />
                                    </a>
                                    <div class="media-body" >
                                        <h5>Alex Deo | User </h5>

                                        <small class="text-muted">Active From 3 hours</small>
                                    </div>
                                </div>

                            </div>
                        </li>
                        <li class="media">

                            <div class="media-body">

                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object img-circle" style="max-height:40px;" src="assets/img/user.gif" />
                                    </a>
                                    <div class="media-body" >
                                        <h5>Jhon Rexa | User </h5>

                                        <small class="text-muted">Active From 3 hours</small>
                                    </div>
                                </div>

                            </div>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
