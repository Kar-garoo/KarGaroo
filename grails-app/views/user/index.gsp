<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>Kar-garoo</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${resource(dir: 'css',file: 'freelancer.css')}" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${resource(dir: 'font-awesome-4.3.0/css',file: 'font-awesome.min.css')}" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

<!-- Navigation -->


<nav class="navbar navbar-inverse navbar-fixed-top " role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header" style="padding-right: 5px;">
            <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        <div class="row">
            <a class="navbar-brand" href="#">
                    <div>
                        <img src="${resource(dir: 'images',file: 'Kargaroo.svg')}"  alt="KAR-GAROO">
                    </div>
                    <div class="col-lg-8">
                        KARGAROO
                    </div>
            </a>
        </div>

        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right text-center">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li class="page-scroll">
                    <a href="#portfolio">
                        <i class="fa fa-taxi"></i>
                        Servicios
                    </a>

                </li>
                <li class="page-scroll">
                    <a href="#about">
                        <i class="fa fa-info"></i>
                        Que es
                    </a>
                </li>
                <li class="page-scroll">
                    <a href="#howWork">

                        <i class="fa fa-question-circle"></i>
                        Como funciona
                    </a>
                </li>

                <li>
                    <a href="${createLink(controller: 'user', action: 'logIn')}">
                        <i class="fa fa-user"></i>
                        Ingresa
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'user', action: 'logUp')}">
                        <i class="fa fa-user-plus"></i>
                        Registrate
                    </a>
                </li>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- Header -->
<div class="row">
    <header>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12  col-lg-12">
                    <object>
                        <embed src="${resource(dir: 'images',file: 'Kargaroo.svg')}" id="svg">
                    </object>
                    <div class="intro-text">
                        <span class="name">Comparte tu transporte</span>
                        <hr class="star-light">
                        <span class="skills">Taxi - Auto</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
</div>

<!-- Portfolio Grid Section -->
<div class="row">
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                    <h2>Servicios</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x">Taxi</i>
                            </div>
                        </div>
                        <img src="${resource(dir: 'images/menuPrin',file: 'Taxi.svg')}" class="img-responsive" alt="Taxi">
                    </a>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x">Auto</i>
                            </div>
                        </div>
                        <img src="${resource(dir: 'images/menuPrin',file: 'Car.svg')}" class="img-responsive" alt="Car">
                    </a>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x">Moto</i>
                            </div>
                        </div>
                        <img src="${resource(dir: 'images/menuPrin',file: 'moto.svg')}" class="img-responsive" alt="moto">
                    </a>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- About Section -->
<div class="row">
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                    <h2>Que es</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-xs-10 col-sm-10 col-md-4 col-lg-4 col-xs-offset-1 col-sm-offset-1 col-md-offset-2 col-lg-offset-2 ">
                    <p class="text-justify">Un sistema que permite compartir medios de transporte. En donde se opte por mejorar la movilidad en la ciudad de Bogotá, con posible crecimiento de la cobertura, ahorro de tiempo en cuanto al desplazamiento de un lugar a otro y que a la vez sea amigable con el medio ambiente. </p>
                </div>
                <div class="col-xs-10 col-sm-10 col-md-4 col-lg-4 col-xs-offset-1 col-sm-offset-1 col-md-offset-0 col-lg-offset-0 ">
                    <p class="text-justify">Ofreciendo una mejor oportunidad de transporte con facilidad de acceso. Una aplicación permitirá a las personas compartir información fácilmente y ponerse en contacto sin gastar mucho tiempo.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-10 col-sm-10 col-md-8 col-lg-8 col-xs-offset-1 col-sm-offset-1 col-md-offset-2 col-lg-offset-2 text-center">
                    <a href="${createLink(controller: 'user', action: 'logUp')}" class="btn btn-lg btn-outline">
                        <i class="fa fa-users"> Registrarse</i>
                    </a>
                </div>
            </div>

        </div>
    </section>
</div>

<!-- How work  Section -->
<div class="row">
    <section id="howWork">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                    <h2>Como funciona</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row col-xs-offset-1 col-sm-offset-1 col-md-offset-0 col-lg-offset-0 ">
                <div class="col-xs-10 col-sm-10 col-md-4 col-lg-4">
                    <h3 class="text-center">Registra</h3>
                    <p class="text-justify">Unete a nuestra comunidad y empieza a utilizar otra alternativa de transporte.</p>
                    <img src="${resource(dir: 'images/menuPrin',file: 'registration.svg')}" class="img-responsive img-centered" style="padding-top: 10%" alt="Registrarce">
                </div>
                <div class="col-xs-10 col-sm-10 col-md-4 col-lg-4">
                    <h3 class="text-center">Busca</h3>
                    <p class="text-justify">Busca una ruta que te sirva y contacta a el usuario que la ofrece.</p>
                    <img src="${resource(dir: 'images/menuPrin',file: 'mapa.svg')}" class="img-responsive img-centered"  alt="Mapa">
                </div>
                <div class="col-xs-10 col-sm-10 col-md-4 col-lg-4">
                    <h3 class="text-center">Comparte</h3>
                    <p class="text-justify">Comparte el auto con alguien mas, ahorras y no te estresas.</p>
                    <img src="${resource(dir: 'images/menuPrin',file: 'share.svg')}" class="img-responsive img-centered" style="padding-top: 10%"  alt="Comparte">

                </div>
            </div>
        </div>
    </section>
</div>

<!-- Footer -->
<div class="row">
    <footer class="text-center">
    <div class="footer-above">
        <div class="container">
            <div class="row">
                <div class="footer-col col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    <!--
                        <h3>Location</h3>
                        <p>3481 Melrose Place<br>Beverly Hills, CA 90210</p>
                        -->
                </div>
                <div class="footer-col col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    <h3>Redes Sociales</h3>
                    <ul class="list-inline">
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="footer-col col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    <h3>Creado con Freelance</h3>
                    <p>
                        Freelance es un tema gratuito libre crado con Bootstrap por <a href="http://startbootstrap.com">Start Bootstrap</a>.
                    <div>Icons made by <a href="http://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a>             is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0">CC BY 3.0</a></div>
                </p>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-below">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    Copyright &copy; Kargaroo 2015
                </div>
            </div>
        </div>
    </div>
</footer>
</div>



<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
<div class="scroll-top page-scroll visible-xs visble-sm">
    <a class="btn btn-primary" href="#page-top">
        <i class="fa fa-chevron-up"></i>
    </a>
</div>

<!-- Portfolio Modals -->
<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h2>Project Title</h2>
                        <hr class="star-primary">
                        <img src="${resource(dir: 'images/menuPrin',file: 'Taxi.svg')}" class="img-responsive img-centered" alt="Taxi">
                        <p>Ahorra dinero al compartir taxi con alguien más, <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Buscar Taxi</a>. Comunicate con él y ahorrate el estres del bus también!</p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h2>Project Title</h2>
                        <hr class="star-primary">
                        <img src="${resource(dir: 'images/menuPrin',file: 'Car.svg')}" class="img-responsive img-centered" alt="Vehiculo">
                        <p>Comparte un vehículo y conoce a alguien nuevo, <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Buscar vehículo</a>. Hay gente que te podría ayudar en un apuro y tu también les puedes ayudar.</p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h2>Moto</h2>
                        <hr class="star-primary">
                        <img src="${resource(dir: 'images/menuPrin',file: 'moto.svg')}" class="img-responsive img-centered" alt="Moto">
                        <p>Para gente más atrevida, tal vez una moto sea lo mejor, <a href="https://sellfy.com/p/8Q9P/jV3VZ/">Buscar Moto</a>.</p>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- jQuery -->
<script src="${resource(dir: 'js',file: 'jquery.js')}"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>

<!-- Plugin JavaScript -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="${resource(dir: 'js',file: 'classie.js')}"></script>
<script src="${resource(dir: 'js',file: 'cbpAnimatedHeader.min.js')}"></script>

<!-- Contact Form JavaScript -->
<script src="${resource(dir: 'js',file: 'jqBootstrapValidation.js')}"></script>


<!-- Custom Theme JavaScript -->
<script src="${resource(dir: 'js',file: 'freelancer.js')}"></script>

</body>

</html>
