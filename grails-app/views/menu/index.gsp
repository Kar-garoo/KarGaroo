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
    <link href="${request.contextPath}/Menu/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${request.contextPath}/Menu/css/simple-sidebar.css" rel="stylesheet">
    <link href="${request.contextPath}/Menu/font-awesome-4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="${request.contextPath}/Menu/css/css_own.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>


<div id="wrapper">

    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">

            <li class="sidebar-brand">

                <a class="navbar-brand"  href="#">
                    <object>
                        <embed src="${request.contextPath}/Menu/img/Kargaroo.svg" class ="img-responsive svg">
                        </embed>
                    </object>Menu
                </a>
            </li>

            <li>
                <a href="#">
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
                <a href="#">

                    <i class="fa fa-bell"> Notificaciones</i>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-question"></i>

                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-question"></i>
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


                <h1>Simple Sidebar</h1>
                <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.


                </p>
                <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>

            </div>
        </div>
    </div>
</div>
<!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="${request.contextPath}/Menu/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${request.contextPath}/Menu/js/bootstrap.min.js"></script>

<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>

</body>

</html>
