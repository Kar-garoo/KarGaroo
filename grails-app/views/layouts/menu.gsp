<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Simple Sidebar - Start Bootstrap Template</title>


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


    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">

                <li class="sidebar-brand">

                    <a class="navbar-brand"  href="#">
                        <object>
                            <embed src="${resource(dir: 'images',file: 'Kargaroo.svg')}" class ="img-responsive svg">
                            </embed>
                        </object>Menu
                    </a>
                </li>

                <li>
                    <a href="${createLink(controller: 'user',action: 'profile')}">
                        <i class="fa fa-user" > Perfil</i>
                    </a>
                </li>
                <li>
                    <a href="#">

                        <i class="fa fa-map-marker"> Mis rutas</i>
                    </a>
                </li>
                <li>
                    <a href="#">

                        <i class="fa fa-search"> Buscador</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'forum')}">
                        <i class="fa fa-users"> Foro</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'chat', action: 'goToChatRoom')}">
                        <i class="fa fa-weixin">Chat</i>
                    </a>
                </li>
                <li>
                    <a href="#">

                        <i class="fa fa-bell"> Notificaciones</i>
                    </a>
                </li>
                <li>
                    <a href="${createLink(controller: 'user', action: 'logOut')}">
                        <i class="fa fa-sign-out"> logOut</i>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-question"></i>
                    </a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12" >
                        <a class= "btn btn-lg btn-outline" href="#menu-toggle"  id="menu-toggle" >
                            <i class="fa fa-bars"> MENU</i>
                        </a>
                    </div>
                </div>
                <div class="row">

                    <g:layoutBody/>
                </div>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->

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
