<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Kar-Garoo Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'bootstrap.min.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'parallax.css')}">
    <script src="${resource(dir: 'js',file: 'jquery-1.10.2.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'parallax.js')}"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>

</head>

<body>
<div class="container">
    <div class="row vertical-offset-100">
        <div class="col-xs-10 col-sm-10 col-md-4 col-lg-4 col-xs-offset-1 col-sm-offset-1 col-md-offset-4 col-lg-offset-4">
            <div class="panel panel-default">
                <div class="heading">
                    <div class="row">
                        <img src="${resource(dir: 'images', file: 'Kargaroo.svg')}" class="img-responsive" alt="Conxole Admin"/>
                    </div>
                </div>
                <div class="panel-body">
                        <g:form controller="user" action="logInLogic" accept-charset="UTF-8" role="form" class="form-signin">
                        <fieldset>
                            <label class="panel-login">
                                <div class="login_result"></div>
                            </label>

                            <g:textField id="user-name" class="form-control" name="userName"  placeholder="Usuario"></g:textField>
                            <g:passwordField type="password" id="password" class="form-control" name="password"  placeholder="Password"></g:passwordField>

                            <br>
                            <div class="col-xs-12 col-sm-12 col-md-12 has-error">
                                <g:if test="${flash.message == "Password incorrecto" || flash.message == "No existe user"}">
                                    <label class="control-label list-group-item-danger img-rounded">Error usuario o contraseña</label>
                                </g:if>
                            </div>
                            <g:submitButton name="summit" type="submit" value="logIn" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>
                        </fieldset>
                    </g:form>

                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>