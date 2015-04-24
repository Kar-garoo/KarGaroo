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

</head>

<body>
<div class="container">
    <div class="row vertical-offset-100">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div  class="heading">
                    <div class="row-fluid user-row">
                        <img src="${request.contextPath}/loginLogup/images/Kar-garoo.svg" class="img-responsive" alt="Conxole Admin"/>
                    </div>
                    <br>
                </div>

                <div class="panel-body">

                    <g:form controller="user" action="register" accept-charset="UTF-8" role="form" class="form-signup">

                        <div class="row">
                            <div class="col-xs-12 col-sm-5 col-md-5">
                                <g:textField id="firs-name" class="form-control" name="firstName"  placeholder="Nombre"></g:textField>

                            </div>
                            <div class="col-xs-12 col-sm-5 col-md-5">
                                <g:textField id="last-name" class="form-control" name="lastName"  placeholder="Apellido"></g:textField>
                            </div>
                            <div class="col-xs-12 col-md-2 col-md-2">
                                <g:textField id="age" class="form-control" name="age"  placeholder="Edad"></g:textField>

                            </div>

                        </div>

                        <g:textField id="user-name" class="form-control" name="userName"  placeholder="Usuario"></g:textField>
                        <g:textField id="email" class="form-control" name="mail"  placeholder="Email"></g:textField>


                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <g:textField type="password" id="password" class="form-control" name="password"  placeholder="Password"></g:textField>

                            </div>

                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <g:textField type="password" id="password_confirmation" class="form-control" name="confirm"  placeholder="Confirm Password"></g:textField>
                            </div>
                        </div>
                        <br>
                        <g:submitButton name="summit" type="submit" value="Register" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>



                    </g:form>

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>