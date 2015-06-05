<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- agrega el Template MENU a la vista chatRoom -->
    <meta name="layout" content="menu"/>
    <!-- archivos necesarios para recargar el historial -->
    <script src="${resource(dir: 'js',file: 'jquery-1.10.2.min.js')}"></script>
    <!-- archivos necesarios para el efecto del fondo -->
    <script src="${resource(dir: 'js',file: 'parallax.js')}"></script>



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
                    <g:if test="${session.Receiver}">
                        My historia con: ${session?.Receiver}
                    </g:if>
                    <g:else>
                        Selecciona un acompañante
                    </g:else>
                </div>


                <div class="panel-body" id="historial">
                    <div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
                    <ul class="media-list">
                        <g:each in="${listMessages}" var="i">
                            <li class="media">
                                <div class="media-body">
                                    <div class="media">
                                        <g:if test="${kargaroo.User.findByUserName(i.transmitter).avatar}">
                                            <img class="media-object img-circle "  style="max-height:40px;" src="${createLink(controller:'user', action:'avatar_image', params:[user:i.transmitter])}">
                                        </g:if>
                                        <g:else>
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-circle" style="max-height:40px;" src="${resource(dir: 'images', file: 'usuarioChat.jpg')}" />
                                            </a>
                                        </g:else>

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
                </div>
                <g:form controller="chat" action="addMessage" accept-charset="UTF-8" role="form" class="form-signin">
                   <fileset>
                    <div class="panel-footer">
                        <div class="input-group">

                            <input type="text" class="form-control" name="Message" placeholder="Enter Message" />
                            <span class="input-group-btn">

                                <g:submitButton name="summit" type="submit" value="ENVIAR" class="btn btn-info" tabindex="7"></g:submitButton>

                                </span>

                        </div>
                    </div>
                   </fileset>
                            </g:form>


            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Acompañantes Kargaroo
                </div>
                <div class="panel-body">
                    <ul class="media-list">
                        <g:each in="${listFriends}" var = "i">
                            <g:if test="${i.userName != session.Transmitter}">
                                    <li class="media">
                                        <div class="media-body">
                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    <img class="media-object img-circle" style="max-height:40px;" src= ${resource(dir: 'images', file: 'usuarioChat.jpg')} />
                                                </a>
                                                <a href="${createLink(controller: 'chat', action: 'addReceiver', params: [receiver: i.userName])}">

                                                    <div class="media-body" >
                                                    <h5> ${i.userName} | Amigo </h5>

                                                    <small class="text-muted">Active From 3 hours</small>
                                                </div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                            </g:if>
                        </g:each>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>

    <script>
        $(document).ready(function(){
            $("boton").click(function(){
                $("historial").reload(true)
            });

        });
    </script>

</body>
</html>
