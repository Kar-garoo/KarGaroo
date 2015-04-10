<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Kar-Garoo logup</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/loginLogup/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/loginLogup/css/parallax.css">
    <script src="${request.contextPath}/loginLogup/js/jquery-1.10.2.min.js"></script>
    <script src="${request.contextPath}/loginLogup/js/parallax.js"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
    <link media="all" type="text/css" rel="stylesheet" href="http://bootsnipp.com/css/fullscreen.css">

</head>

<body>
<div class="container">
    <div class="row vertical-offset-100">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">

                    <div class="row-fluid user-row">
                        <img src="${request.contextPath}/loginLogup/images/Kar-garoo.svg" class="img-responsive" alt="Conxole Admin"/>
                    </div>

                <div class="panel-body">

                    <form accept-charset="UTF-8" role="form" class="form-signup">

                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <input type="text" name="first_name" id="first_name" class="form-control" placeholder="First Name" tabindex="1">

                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Last Name" tabindex="2">

                            </div>
                        </div>

                        <input type="text" name="display_name" id="display_name" class="form-control" placeholder="Display Name" tabindex="3">


                        <input type="email" name="email" id="email" class="form-control" placeholder="Email Address" tabindex="4">

                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">

                                <input type="password" name="password" id="password" class="form-control" placeholder="Password" tabindex="5">
                            </div>

                            <div class="col-xs-12 col-sm-6 col-md-6">

                                <input type="password" name="password_confirmation" id="password_confirmation" class="form-control" placeholder="Confirm Password" >

                            </div>
                        </div>
                        <br>

                        <input type="submit" value="Register" class="btn btn-lg btn-success btn-block" tabindex="7">


                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>