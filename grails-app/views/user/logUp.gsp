<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Kar-Garoo logup</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'bootstrap.min.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'parallax.css')}">
    <script src="${resource(dir: 'js',file: 'jquery-1.10.2.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'parallax.js')}"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>

</head>

<body>
<div class="container ">
    <div class="row vertical-offset-100">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div  class="heading">
                    <div class="row-fluid user-row">
                        <img src="${resource(dir: 'images',file: 'Kargaroo.svg')}" class="img-responsive" alt="Conxole Admin"/>
                    </div>
                    <br>
                </div>

                <div class="panel-body">

                    <g:uploadForm controller="user" action="register" accept-charset="UTF-8" role="form" class="form-signup">

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
                                <g:passwordField type="password" id="password_confirmation" class="form-control" name="confirm"  placeholder="Confirm Password"></g:passwordField>
                            </div>
                        </div>
                        <br>

                        <div style="color: #000000; background-color: #ffffff">
                            <legend>Avatar Upload</legend>
                                <label for="avatar">Avatar (16K)</label>
                                <input type="file" name="avatar" id="avatar" />
                                <div style="font-size:0.8em; margin: 1.0em;">
                                    For best results, your avatar should have a width-to-height ratio of 4:5.
                                    For example, if your image is 80 pixels wide, it should be 100 pixels high.
                                </div>
                        </div>
                        <g:submitButton name="summit" type="submit" value="Register" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>


                    </g:uploadForm>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>