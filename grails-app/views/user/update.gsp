<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!--Esta linea permite agregar el layout MENU -->
    <meta name="layout" content="menu"/>

    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'profilecss.css')}" rel="stylesheet">
</head>

<body  style = "background-color: #BDBDBD">

<div class="row">
<g:uploadForm controller="user" action="updateUser" accept-charset="UTF-8" role="form" class="form">
    <div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
        <div class="panel panel-default">
            <div class="panel-heading resume-heading">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-xs-12 col-sm-4">
                            <div class="row">
                                <figure>
                                    <g:if test="${user.avatar}">
                                        <img class="img-rounded img-responsive img-centered center-block" src="${createLink(controller:'user', action:'avatar_image', id:user.ident())}" />
                                    </g:if>
                                    <g:else>
                                        <img class="img-rounded img-responsive img-centered" alt="Profile" src="http://placehold.it/300x300">
                                    </g:else>
                                </figure>
                                <div class="row text-center">
                                    <div class="fileUpload btn btn-primary">
                                        <span>Upload 3M</span>
                                        <input type="file" name="avatar" id="avatar" class="upload" id="avatar" />
                                    </div>
                                    <input id="uploadFile" placeholder="Selecciona imagen" disabled="disabled" />
                                </div>
                                <!--
                                <div class="row">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2  list-group-item img-rounded">
                                        <legend>Imagen de usuario</legend>
                                        <label for="avatar">Avatar (3M)</label>
                                        <input type="file" name="avatar" id="avatar" />
                                        <div style="font-size:0.8em; margin: 1.0em;">
                                            <p>Tu imagen de usuario es opcional, pero es bueno que te identifiques de alguna manera.
                                            Lo mejor seria una foto de tu cara.</p>
                                        </div>
                                    </div>
                                </div>-->
                            </div>
                            <div>
                                <hr>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 social-btns">

                                    <div class="col-xs-4 col-md-4 col-lg-4 social-btn-holder">
                                        <a href="#" class="btn btn-social btn-block btn-google">
                                            <i class="fa fa-google"></i></a>
                                    </div>

                                    <div class="col-xs-4 col-md-4 col-lg-4 social-btn-holder">
                                        <a href="#" class="btn btn-social btn-block btn-facebook">
                                            <i class="fa fa-facebook"></i> </a>
                                    </div>

                                    <div class="col-xs-4 col-md-4 col-lg-4 social-btn-holder">
                                        <a href="#" class="btn btn-social btn-block btn-twitter">
                                            <i class="fa fa-twitter"></i> </a>
                                    </div>

                                </div>

                            </div>


                        </div>


                        <div class="col-xs-12 col-sm-8">
                            <ul class="list-group">
                                <li class="list-group-item">${user.userName}</li>
                                <li class="list-group-item">${user.firstName} ${user.lastName}</li>
                                <li class="list-group-item">
                                    D.N.I<g:textField id="DNI" class="form-control" name="DNI"  value="${user.DNI}"></g:textField>
                                </li>
                                <li class="list-group-item">
                                    <i class="fa fa-phone"></i><g:textField id="phone" class="form-control" name="phone"  value="${user.phone}"></g:textField>
                                </li>

                                <li class="list-group-item"><i class="fa fa-envelope"></i> ${user.mail}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bs-callout bs-callout-danger">
                <div class="row">
                    <div class="col-lg-11 col-xs-10">
                        <h4>Sobre mi</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <g:textArea name="description"  class="form-control"><g:if test="${user.description}">${user.description}</g:if></g:textArea>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-xs-12 col-md-5 btn-block">
                <g:submitButton name="summit" type="submit" value="Guardar" class="btn btn-lg btn-success btn-block" ></g:submitButton>
            </div>
            <div class="col-xs-12 col-md-5 btn-block">
                <a href="${createLink(controller: 'user', action: 'profile')}" class="btn btn-block btn-danger">
                    Salir
                </a>
            </div>
        </div>
    </div>
</g:uploadForm>
</div>


<script >
    document.getElementById("avatar").onchange = function () {
        document.getElementById("uploadFile").value = this.value;
    };
</script>

</body>
</html>