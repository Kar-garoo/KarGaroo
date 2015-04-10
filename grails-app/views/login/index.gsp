<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Kar-Garoo Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/loginLogup/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/loginLogup/css/parallax.css">
    <script src="${request.contextPath}/loginLogup/js/jquery-1.10.2.min.js"></script>
    <script src="${request.contextPath}/loginLogup/js/parallax.js"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>

</head>

<body>
<div class="container">
    <div class="row vertical-offset-100">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="heading">
                    <div class="row-fluid user-row">
                        <img src="${request.contextPath}/loginLogup/images/Kar-garoo.svg" class="img-responsive" alt="Conxole Admin"/>
                    </div>
                </div>
                <div class="panel-body">
                    <form accept-charset="UTF-8" role="form" class="form-signin">
                        <fieldset>
                            <label class="panel-login">
                                <div class="login_result"></div>
                            </label>
                            <input class="form-control" placeholder="Username" id="username" type="text">
                            <input class="form-control" placeholder="Password" id="password" type="password">

                            <br>
                            <input class="btn btn-lg btn-success btn-block" type="submit" id="login" value="Login »">
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>