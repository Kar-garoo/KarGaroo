<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <!-- agrega el Template MENU a la vista chatRoom -->
    <meta name="layout" content="menu"/>
    <!-- archivos necesarios para recargar el historial -->
    <script src="${resource(dir: 'js',file: 'jquery-1.10.2.min.js')}"></script>
    <!-- archivos necesarios para el efecto del fondo -->
    <script src="${resource(dir: 'js',file: 'parallax.js')}"></script>

    <link href="${resource(dir: 'css',file: 'chat.css')}" rel="stylesheet">

    <title>KARGAROO CHAT</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="${resource(dir: 'css',file: 'bootstrap.min.css')}" rel="stylesheet">

</head>
<body>
<!--<body style="font-family:Verdana">-->

    <div class="row " >
        <h3 class="text-center" style= "color:orange" >KARGAROO CHAT</h3>
        <br /><br />
        <div class="col-md-8">
            <div class="panel panel-info">
                <div class="panel-heading" style="background-color: #000000">
                    <g:if test="${session.Receiver}">
                        <h4 style= "color:orange">My historia con: ${session?.Receiver}</h4>
                    </g:if>
                    <g:else>
                        <h3 style= "color:orange">Selecciona un acompañante</h3>
                    </g:else>
                </div>

                <div class="panel-body" id="historial" onchange="${remoteFunction(action: 'goToChatRoom')}">

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


                <g:form controller="chat" action="addMessage" accept-charset="UTF-8" role="form" class="form-signin">
                   <fileset>
                    <div class="panel-footer">
                        <div class="input-group">

                            <input type="text" class="form-control" name="Message" placeholder="Enter Message" />
                            <span class="input-group-btn">

                                <g:submitButton  style= "background-color:orange" name="summit" type="submit" value="ENVIAR" class="btn btn-info" tabindex="7"></g:submitButton>

                                </span>

                        </div>
                    </div>
                   </fileset>
                            </g:form>


            </div>
        </div>

        <div class="col-md-4">
            <div class="panel panel-primary">
                <div class="panel-heading" style="background-color: #000000">
                    <h4 style= "color:orange">Acompañantes Kargaroo</h4>
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
                                                    <h5> ${i.userName}</h5>
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



</body>
</html>
