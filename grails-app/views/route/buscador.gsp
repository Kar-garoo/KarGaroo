<html ng-app="Test">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="layout" content="menu"/>
    <title>Buscador</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'profilecss.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'mapa.css')}" rel="stylesheet">
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?libraries=places&sensor=false"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.js"></script>
    <g:javascript src="script.js"></g:javascript>
    <g:javascript src="ngAutocomplete.js"></g:javascript>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.20/angular-touch.min.js"></script>
    <script src="js/libs/angucomplete-alt.js"></script>
</head>


<div ng-controller="TestCtrl">
    <g:uploadForm controller="route" action="findRoute">
        <div class="row">
            <div class="form-group move-down col-lg-5">
                <label for="Autocomplete">Origen</label>
                <g:textField name="origin" type="text" id="Autocomplete" class="form-control" ng-autocomplete="result3" details="details3" options="options3"></g:textField>
            </div>
            <div class="form-group move-down col-lg-5">
                <label for="Autocomplete">Destino</label>
                <g:textField name="end" type="text" id="Autocomplete" class="form-control" ng-autocomplete="result3" details="details3" options="options3"/>
            </div>
        </br>

        <div class="row ">
            <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3 btn-block">
                <g:submitButton name="Ok" type="submit" value="Buscar" class="btn btn-lg btn-success btn-block" ></g:submitButton>
            </div>
        </div>
        </div>
    </g:uploadForm>
</div>

<g:each in="${rutas}" var="rou">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 portfolio-item">
        <div class="list-group-item">
            <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                <div class="caption">
                    <div class="caption-content">
                        <div class="row">
                            <div class="col-lg-7">
                                <h4>${rou.car.owner.userName}</h4>
                                <p>${rou.car.capacity}</p>
                                <g:if test="${rou?.description}">
                                    <h5>Descripcion</h5>
                                    <p class="text-justify">${rou.description}</p>
                                </g:if>
                                <g:else>
                                    <h5>Descripcion</h5>
                                    <p class="text-justify">Sin descripcion</p>
                                </g:else>
                                <h5>Origen:${rou.origin}</h5>
                                <h5>Destino:${rou.end}</h5>
                            </div>
                            <div class="col-lg-5">
                                <g:if test="${rou.car.owner.userName.contains(session["userSession"]) || rou.getUsers().contains(User.findByUserName(session["userSession"]))}">
                                    <g:if test="${rou.car.owner.userName == (session["userSession"])}">
                                        <g:link controller="route" action="deleteRoute" params="${[routeId:rou.id]}" >
                                            Borrar Ruta
                                        </g:link>
                                    </g:if>
                                    <g:else>
                                        <g:link controller="route"  action="leaveRoute" params="${[userName:session["userSession"],routeId:rou.id]}" >
                                            Dejar Ruta
                                        </g:link>
                                    </g:else>

                                </g:if>
                                <g:else>
                                    <g:if test="${kargaroo.request.RouteRequest.findBySenderAndReceiverAndRequestedRoute(User.findByUserName(session.userSession), Route.findById(rou.id).car.owner,Route.findById(rou.id))!= null}">
                                        Solicitud enviada
                                    </g:if>
                                    <g:else>
                                        <g:link  controller="request" action="requestRoute" params="${[routeId: rou.id, userRequest:rou.car.owner.userName]}" >
                                            Solicitar Entrar
                                        </g:link>
                                    </g:else>
                                </g:else>
                                <div>
                                    <g:each in="${rou.users}" var="userSit">
                                        <i class="fa fa-user-plus">${userSit.userName}</i>
                                    </g:each>
                                </div>

                            </div>

                        </div>

                    </div>
                </div>
            </a>
        </div>
        <a id="butonmap${rou.id}" class="btn btn-block btn-default" onclick="$('#${rou.id}map').show('slow'); $('#butonMap${rou.id}').hide( 'slow' );">

            <i class="fa fa-search-plus">Mapa</i>
        </a>
    </div>

    <g:render template="mapCanvas" model="[begin: rou?.origin, end:rou?.end,div:rou.id]" ></g:render>

    <div class="pagination">
        <g:paginate total="${kargaroo.Route.list().size()}" params="${[routeId:{rou.id}]}"/>
    </div>

</g:each>

</html>