<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${resource(dir: 'images',file: 'icon.ico')}">

    <title><g:layoutTitle default="Kargaroo"/></title>


    <!-- Bootstrap Core CSS -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${resource(dir: 'css',file: 'simple-sidebar.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'css_own.css')}" rel="stylesheet">
    <link href="${resource(dir: 'font-awesome-4.3.0/css',file: 'font-awesome.min.css')}" rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <g:layoutHead/>
</head>

<body>

<div class="container">

    <div id="wrapper" class="row">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li>
                    <div style="padding-left: 20px;padding-top: 20px;padding-right: 20px;">
                        <img src="${resource(dir: 'images',file: 'Kargaroo.svg')}" class ="img-responsive">
                    </div>
                    <div style="padding-left: 75px">
                        <h3 class="text" style="color: #ffffff">Menu</h3>

                    </div>
                </li>
                <li>
                    <h4 style="color:#ffffff;">${session.userSession}</h4>
                </li>
                <li>
                    <a href="${createLink(controller: 'user',action: 'profile', params: [userName: "${session.userSession}"])}">
                        <i class="fa fa-user" > Perfil</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'route')}">

                        <i class="fa fa-map-marker"> Mis rutas</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'route',action: 'buscador')}">

                        <i class="fa fa-search"> Buscador</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'forum')}">
                        <i class="fa fa-columns"> Foro</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'chat', action: 'goToChatRoom')}">
                        <i class="fa fa-weixin"> Chat</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'user', action: 'groups')}">
                        <i class="fa fa-users"> Grupos</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'user',action: 'notifications')}">
                        <i class="fa fa-bell"> Notificaciones</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'user', action: 'logOut')}">
                        <i class="fa fa-sign-out"> logOut</i>
                    </a>
                </li>


            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row" id="full">
                    <div class="col-lg-12" >
                        <a class= "btn btn-lg btn-outline"  href="#menu-toggle" id="menu-toggle" >
                            <i  class="fa fa-bars"></i>
                        </a>
                    </div>
                </div>
                <g:layoutBody/>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->



    <nav class="navbar navbar-inverse navbar-fixed-top " role="navigation" id="miniMenu">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header" style="padding-right: 5px;">
                <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="row"  >

                    <div style="display: inline-block;" >
                        <img style="height: 50px; padding: 2px;margin-left: 30px; " src="${resource(dir: 'images',file: 'Kargaroo.svg')}"  alt="KAR-GAROO">
                    </div>
                    <div class="col-lg-8" style="display: inline-block;color:white;font-family: Trebuchet MS, Tahoma, Verdana, Arial, sans-serif, sans-serif;font-size: 20px;vertical-align:middle; ">
                        KARGAROO
                    </div>

                </div>

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right text-center">
                    <li>
                        <a href="${createLink(controller: 'user',action: 'profile', params: [userName: "${session.userSession}"])}">
                            <i class="fa fa-user" > Perfil</i>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: 'route')}">

                            <i class="fa fa-map-marker"> Mis rutas</i>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: 'route',action: 'buscador')}">

                            <i class="fa fa-search"> Buscador</i>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: 'forum')}">
                            <i class="fa fa-columns"> Foro</i>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: 'chat', action: 'goToChatRoom')}">
                            <i class="fa fa-weixin"> Chat</i>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: 'user', action: 'groups')}">
                            <i class="fa fa-users"> Grupos</i>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: 'user',action: 'notifications')}">

                            <i class="fa fa-bell"> Notificaciones</i>
                        </a>
                    </li>
                    <li>
                        <a href="${createLink(controller: 'user', action: 'logOut')}">
                            <i class="fa fa-sign-out"> logOut</i>
                        </a>
                    </li>


                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</div>

<!-- /#wrapper -->

<!-- jQuery -->
<script src="${resource(dir: 'js',file: 'jquery.js')}"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>

<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>

</body>

</html>
