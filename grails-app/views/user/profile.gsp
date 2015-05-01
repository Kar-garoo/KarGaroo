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
    <div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
        <div class="panel panel-default">
            <div class="panel-heading resume-heading">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-xs-12 col-sm-4">
                                <figure>
                                    <g:if test="${user.avatar}">
                                        <img class="avatar" src="${createLink(controller:'user', action:'avatar_image', id:user.ident())}" />
                                    </g:if>
                                    <g:else>
                                        <img class="img-circle img-responsive img-centered" alt="" src="http://placehold.it/300x300">
                                    </g:else>
                                </figure>

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

                        </div>

                        <div class="col-xs-12 col-sm-8">
                            <ul class="list-group">
                                <li class="list-group-item">${user.userName}</li>
                                <li class="list-group-item">${user.firstName} ${user.lastName}</li>
                                <!-- Condicion si el DNI es null muestra no Disponible-->
                                <g:if test="${user.DNI} == null">
                                    <li class="list-group-item">D.I: No Disponible</li>
                                </g:if>
                                <g:else>
                                    <li class="list-group-item">D.I: ${user.DNI}</li>
                                </g:else>
                                <!-- Condicion si el telefono es nll lo de ja en 000000 -->
                                <g:if test="${user.phone} == null">
                                    <li class="list-group-item"><i class="fa fa-phone"></i>  No Disponible</li>
                                </g:if>
                                <g:else>
                                    <li class="list-group-item"><i class="fa fa-phone"></i>  ${user.phone}</li>
                                </g:else>

                                <li class="list-group-item"><i class="fa fa-envelope"></i> ${user.mail}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bs-callout bs-callout-danger">
                <h4>Sobre mi</h4>
                <p>
                    ${user.description}
                </p>

            </div>
            <div class="bs-callout bs-callout-danger">
                <h4>Auto</h4>
                <p>
                    Software Engineering, Machine Learning, Image Processing,
                    Computer Vision, Artificial Neural Networks, Data Science,
                    Evolutionary Algorithms.
                </p>
            </div>

            <div class="bs-callout bs-callout-danger">
                <h4>Historial de viajes</h4>
                <ul class="list-group">
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc </li>
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                    <li class="list-group-item">Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                    <li class="list-group-item"> Lorem ipsum dolor sit amet, ea vel prima adhuc</li>
                </ul>
            </div>
            <div class="bs-callout bs-callout-danger">
                <h4>Reputacion</h4>
                <ul class="list-group">
                    <a class="list-group-item inactive-link" href="#">


                        <div class="progress">
                            <div data-placement="top" style="width: 100%;"
                                 aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-success">
                                <span class="sr-only">100%</span>
                                <span class="progress-type">Java/ JavaEE/ Spring Framework </span>
                            </div>
                        </div>


                        <div class="progress-meter">
                            <div style="width: 25%;" class="meter meter-left"><span class="meter-text">Malo</span></div>
                            <div style="width: 25%;" class="meter meter-left"><span class="meter-text">Puedo mejorar</span></div>
                            <div style="width: 30%;" class="meter meter-right"><span class="meter-text">Bueno</span></div>
                            <div style="width: 20%;" class="meter meter-right"><span class="meter-text">Exelente</span></div>
                        </div>

                    </a>

                </ul>
            </div>
        </div>

    </div>
</div>

</div>
</body>
</html>