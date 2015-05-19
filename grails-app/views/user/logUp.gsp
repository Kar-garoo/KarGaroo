<!DOCTYPE html>

<html lang="es">
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
                            <g:if test="${!hasErrors(field: 'firstName','error')}">
                                <div class="col-xs-12 col-sm-5 col-md-5">
                                    <g:textField id="firs-name" class="form-control" name="firstName"  placeholder="Nombre"></g:textField>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="col-xs-12 col-sm-5 col-md-5 has-error">
                                    <g:textField id="firs-name" class="form-control "  name="firstName"  placeholder="Nombre"></g:textField>
                                    <label class="control-label list-group-item-danger img-rounded">Nombre entre 3-20 caracteres</label>
                                </div>
                            </g:else>
                            <g:if test="${!hasErrors(field: 'lastName','error')}">
                                <div class="col-xs-12 col-sm-4 col-md-4">
                                    <g:textField id="last-name" class="form-control" name="lastName"  placeholder="Apellido"></g:textField>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="col-xs-12 col-sm-4 col-md-4 has-error">
                                    <g:textField id="last-name" class="form-control"  name="lastName"  placeholder="Apellido"></g:textField>
                                    <label class="control-label list-group-item-danger img-rounded">Apellido entre 3-20 caracteres</label>
                                </div>
                            </g:else>

                            <g:if test="${!hasErrors(field: 'age','error')}">
                                <div class="col-xs-12 col-md-3 col-md-3">
                                    <g:textField id="age" class="form-control" name="age"  placeholder="Edad"></g:textField>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="col-xs-12 col-md-3 col-md-3 has-error">
                                    <g:textField id="age" class="form-control" name="age"  placeholder="Edad"></g:textField>
                                    <label class="control-label list-group-item-danger img-rounded">Edad incorrecta</label>
                                </div>
                            </g:else>

                        </div>

                        <div class="row">
                            <g:if test="${!hasErrors(field: 'DNI','error')}">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <g:textField id="DNI" class="form-control" name="DNI"  placeholder="Documento"></g:textField>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="col-xs-12 col-sm-6 col-md-6 has-error">
                                    <g:textField id="DNI" class="form-control" name="DNI"  placeholder="Documento"></g:textField>
                                    <label class="control-label list-group-item-danger img-rounded">Documento ya registrado</label>
                                </div>
                            </g:else>
                            <g:if test="${!hasErrors(field: 'phone','error')}">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <g:textField id="phone" class="form-control" name="phone"  placeholder="Telefono"></g:textField>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="col-xs-12 col-sm-6 col-md-6 has-error">
                                    <g:textField id="phone" class="form-control" name="phone"  placeholder="Telefono"></g:textField>
                                    <label class="control-label list-group-item-danger img-rounded">Telefono Invalido</label>
                                </div>
                            </g:else>
                        </div>
                        <div class="row">
                            <g:if test="${!hasErrors(field: 'userName','error')}">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <g:textField id="user-name" class="form-control" name="userName"  placeholder="Usuario"></g:textField>
                                </div>
                            </g:if>
                            <g:elseif test="${flash.message == "userExist"}">
                                <div class="col-xs-12 col-sm-6 col-md-6 has-error">
                                    <g:textField id="user-name" class="form-control" name="userName"  placeholder="Usuario"></g:textField>
                                    <label class="control-label list-group-item-danger img-rounded">Usuario ya existe</label>
                                </div>
                            </g:elseif>
                            <g:else>
                                <div class="col-xs-12 col-sm-6 col-md-6 has-error">
                                    <g:textField id="user-name" class="form-control" name="userName"  placeholder="Usuario"></g:textField>
                                    <label class="control-label list-group-item-danger img-rounded">Usuario entre 5-20 caracteres</label>
                                </div>
                            </g:else>
                            <g:if test="${!hasErrors(field: 'mail','error')}">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <g:textField id="email" class="form-control" name="mail"  placeholder="Email"></g:textField>
                                </div>
                            </g:if>
                            <g:elseif test="${flash.message == "mailExist"}">
                                <div class="col-xs-12 col-sm-6 col-md-6 has-error">
                                    <g:textField id="email" class="form-control" name="mail"  placeholder="Email"></g:textField>
                                    <label class="control-label list-group-item-danger img-rounded">Mail ya usado</label>
                                </div>
                            </g:elseif>
                            <g:else>
                                <div class="col-xs-12 col-sm-6 col-md-6 has-error">
                                    <g:textField id="email" class="form-control" name="mail"  placeholder="Email"></g:textField>
                                    <label class="control-label list-group-item-danger img-rounded">Email incorrecto</label>
                                </div>
                            </g:else>
                        </div>

                        <div class="row">
                            <g:if test="${!hasErrors(field: 'password','error')}">
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <g:passwordField type="password" id="password" class="form-control" name="password"  placeholder="Password"></g:passwordField>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="col-xs-12 col-sm-6 col-md-6 has-error">
                                    <g:passwordField type="password" id="password" class="form-control" name="password"  placeholder="Password"></g:passwordField>
                                    <label class="control-label list-group-item-danger img-rounded">Password entre 5-15 caracteres</label>
                                </div>
                            </g:else>
                            <g:if test="${flash.message == "Password"}">
                                <div class="col-xs-12 col-sm-6 col-md-6 has-error">
                                    <g:passwordField type="password" id="password_confirmation" class="form-control" name="confirm"  placeholder="Confirm Password"></g:passwordField>
                                    <label class="control-label list-group-item-danger img-rounded">Confirm diferente a password</label>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <g:passwordField type="password" id="password_confirmation" class="form-control" name="confirm"  placeholder="Confirm Password"></g:passwordField>
                                </div>
                            </g:else>

                        </div>
                        <br>
                        <g:if test="${flash.message == "Avatar"}">
                            <div class="row">
                                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2  list-group-item img-rounded">
                                    <legend>Imagen de usuario</legend>
                                    <label for="avatar">Avatar (3M)</label>
                                    <input type="file" name="avatar"/>
                                    <div style="font-size:0.8em; margin: 1.0em;">
                                        <p>Tu imagen de usuario es opcional, pero es bueno que te identifiques de alguna manera.
                                        Lo mejor seria una foto de tu cara.</p>
                                    </div>
                                    <label class="control-label list-group-item-danger img-rounded">Avatar deve ser:${formats}</label>
                                </div>
                            </div>
                        </g:if>
                        <g:else>
                            <div class="row">
                                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2  list-group-item img-rounded">
                                    <legend>Imagen de usuario</legend>
                                    <label for="avatar">Avatar (3M)</label>
                                    <input type="file" name="avatar" id="avatar" />
                                    <div style="font-size:0.8em; margin: 1.0em;">
                                        <p>Tu imagen de usuario es opcional, pero es bueno que te identifiques de alguna manera.
                                        Lo mejor seria una foto de tu cara.</p>
                                    </div>
                                </div>
                            </div>
                        </g:else>
                        <br>
                        <g:submitButton name="summit" type="submit" value="Register" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>


                    </g:uploadForm>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>