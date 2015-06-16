<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Perfil ${user.userName}</title>
    <!--Esta linea permite agregar el layout MENU -->
    <meta name="layout" content="menu"/>



    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'profilecss.css')}" rel="stylesheet">
</head>

<body  style = "background-color: #BDBDBD">

<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-1 col-lg-10">
        <div class="panel panel-default">
            <div class="panel-heading resume-heading">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-xs-12 col-sm-4">
                            <div class="row">
                                <figure>
                                    <g:if test="${user.avatar}">
                                        <img class="img-rounded img-responsive img-centered center-block" src="${createLink(controller:'user', action:'avatar_image', params: [user:user.userName])}" />
                                    </g:if>
                                    <g:else>
                                        <img class="img-rounded img-responsive img-centered center-block" alt="Profile" src="${resource(dir: 'images',file: 'noPhoto.png')}">
                                    </g:else>
                                </figure>
                            </div>
                            <div>
                                <hr>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 social-btns">

                                    <div class="col-xs-4 col-md-4 col-lg-4 social-btn-holder">
                                        <a href="#" class="btn btn-social btn-block btn-google">
                                            <i class="fa fa-google"></i> </a>
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

                            <div>
                                <hr>
                            </div>
                            <g:if test="${user.userName == session.userSession}">
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <a href="${createLink(controller: 'user', action: 'update')}" class="btn btn-block btn-default">
                                            <i class="fa fa-cog"> EDITAR </i>
                                        </a>
                                    </div>

                                </div>
                                <div>
                                    <hr>
                                </div>
                            </g:if>

                        </div>


                        <div class="col-xs-12 col-sm-8">
                            <ul class="list-group">
                                <li class="list-group-item">${user.userName}</li>
                                <li class="list-group-item">${user.firstName} ${user.lastName}</li>
                                <!-- Condicion si el DNI es null muestra no Disponible-->
                                <g:if test="${user.DNI == null}">
                                    <li class="list-group-item">D.I: No Disponible</li>
                                </g:if>
                                <g:else>
                                    <li class="list-group-item">D.I: ${user.DNI}</li>
                                </g:else>
                                <!-- Condicion si el telefono es nll lo de ja en 000000 -->
                                <g:if test="${user.phone == null}">
                                    <li class="list-group-item"><i class="fa fa-phone"></i>  No Disponible</li>
                                </g:if>
                                <g:else>
                                    <li class="list-group-item"><i class="fa fa-phone"></i>  ${user.phone}</li>
                                </g:else>

                                <li class="list-group-item"><i class="fa fa-envelope"></i> ${user.mail}</li>

                                <div class="bs-callout bs-callout-danger">
                                        <h4>Reputacion</h4>
                                        <ul class="list-group">
                                            <a class="list-group-item inactive-link" href="#">

                                                <div class="progress">
                                                    <div data-placement="top" style="width: 20%;"
                                                         aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-success">
                                                        <span class="sr-only">100%</span>
                                                        <span class="progress-type">Rep</span>
                                                    </div>
                                                </div>


                                                <div class="progress-meter">
                                                    <div style="width: 25%;" class="meter meter-left"><span class="meter-text">Malo</span></div>
                                                    <div style="width: 25%;" class="meter meter-left"><span class="meter-text">Medio</span></div>
                                                    <div style="width: 20%;" class="meter meter-right"><span class="meter-text">Exelente</span></div>
                                                    <div style="width: 30%;" class="meter meter-right"><span class="meter-text">Bueno</span></div>

                                                </div>

                                            </a>

                                        </ul>
                                    </div>

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
                <p>
                    ${user.description}
                </p>
            </div>

            <g:if test="${user.userName == session.userSession && user.getCar()}">
            <div class="bs-callout bs-callout-danger">
                <div class="row">
                    <div class="col-lg-11 col-xs-10"><h4>Auto</h4></div>
                    <div class="col-lg-1 col-xs-2">
                        <a href="profile.gsp">
                            <i class="fa fa-cog"></i>
                        </a>
                    </div>
                </div>
                    <div class="row">
                        <div class="col-lg-3">
                            <p class="plate text-center">
                                ${user?.getCar()?.plate}
                            </p>
                        </div>
                        <div class="col-lg-6">
                            <h4>MODELO</h4>
                            <p>
                                ${user?.getCar()?.model}
                            </p>

                        </div>
                        <div class="col-lg-3">
                            <h4>CAPACIDAD</h4>
                            <p>
                                ${user?.getCar()?.capacity}
                            </p>
                        </div>
                    </div>
                </g:if>

                <g:elseif test="${user.userName == session.userSession && !user.getCar()}">
                    <div class="bs-callout bs-callout-danger">
                <div class="row">
                    <div class="col-lg-11 col-xs-10"><h4>Auto</h4></div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-lg-offset-4 col-md-4">
                        <a id="butonCar" class="btn btn-block btn-default" onclick="$('#formCar').show('slow'); $('#butonCar').hide( 'slow' );">

                            <i class="fa fa-cog">Agrega tu vehiculo</i>
                    </a>
                    </div>
                    <div id="formCar"  class="col-lg-12" style="display: none;">
                        <g:uploadForm  controller="user" action="addCar">
                            <h1>Datos de tu vehiculo</h1>
                            <div class="row">
                                <div class="col-lg-3">
                                    <g:textField class="form-group" name="plate" placeholder="Placa"></g:textField>
                                </div>
                                <div class="col-lg-6 ">
                                    <g:textField class="form-group center-block" name="model" placeholder="Modelo"></g:textField>
                                </div>
                                <div class="col-lg-3">
                                    <g:select name="capacity" from="${1..5}" noSelection="['':'Elija capasidad']"></g:select>
                                </div>

                            </div>
                            <div>
                                <g:renderErrors></g:renderErrors>
                            </div>
                            <div class="row ">
                                <div class="col-xs-12 col-md-5 btn-block">
                                    <g:submitButton name="Ok" type="submit" value="Guardar" class="btn btn-lg btn-success btn-block" ></g:submitButton>
                                </div>
                                <div class="col-xs-12 col-md-5 btn-block">
                                    <a class="btn btn-block btn-default" onclick="$('#butonCar').show( 'slow' );$('#formCar').hide('slow');">
                                        Salir
                                    </a>
                                </div>
                            </div>

                        </g:uploadForm>

                    </div>
                </div>
                    </div>
                </g:elseif>
                <g:else>
                    <div class="bs-callout bs-callout-danger">
                <div class="row">
                    <div class="col-lg-11 col-xs-10"><h4>Auto</h4></div>
                    <div class="col-lg-1 col-xs-2">
                        <a href="profile.gsp">
                            <i class="fa fa-cog"></i>
                        </a>
                    </div>
                </div>
                    <div class="row">
                        <div class="col-lg-3">
                            <p class="plate text-center">
                    ${user?.getCar()?.plate}
                    </p>
                </div>
                    <div class="col-lg-6">
                        <h4>MODELO</h4>
                        <p>
                            ${user?.getCar()?.model}
                        </p>

                    </div>
                    <div class="col-lg-3">
                        <h4>CAPACIDAD</h4>
                        <p>
                            ${user?.getCar()?.capacity}
                        </p>
                    </div>
                    </div>
                </g:else>

            <div class="bs-callout bs-callout-danger">
                <h4>Historial de viajes</h4>
                <ul class="list-group">
                    <g:each in="${kargaroo.Route.list()?.users?.contains(user)}">
                        <li class="list-group-item"> ${it}</li>
                    </g:each>
                </ul>
                <ul class="list-group">
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc </li>
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                    <li class="list-group-item">Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                </ul>
            </div>

        </div>

    </div>
</div>

</div>
</body>
</html>