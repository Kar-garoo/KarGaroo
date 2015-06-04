<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="layout" content="menu"/>
    <title>Notificaciones</title>
    <!--Esta linea permite agregar el layout MENU -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'mapa.css')}" rel="stylesheet">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <g:set var="origins"></g:set>
    <script>

        var rendererOptions = {
            draggable: true
        };
        var directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);;
        var directionsService = new google.maps.DirectionsService();
        var map;



        var colombiaBogota = new google.maps.LatLng(4.6136119,-74.1143092);

        function initialize() {

            var mapOptions = {
                zoom: 7,
                center: colombiaBogota
            };
            map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            directionsDisplay.setMap(map);
            directionsDisplay.setPanel(document.getElementById('directionsPanel'));

            google.maps.event.addListener(directionsDisplay, 'directions_changed', function() {
                computeTotalDistance(directionsDisplay.getDirections());
            });

            calcRoute();
        }

        function calcRoute() {

            var request = {
                origin: ' cd kennedy, Bogota',
                destination: ' usaquen, Bogota',
                //waypoints:[{location: 'fontibon, Bogota'}, {location: 'engativa, Bogota'}],
                travelMode: google.maps.TravelMode.DRIVING
            };
            ${origins = origin}
            directionsService.route(request, function(response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });
        }

        function computeTotalDistance(result) {
            var total = 0;
            var myroute = result.routes[0];
            for (var i = 0; i < myroute.legs.length; i++) {
                total += myroute.legs[i].distance.value;
            }
            total = total / 1000.0;
            document.getElementById('total').innerHTML = total + ' km';
        }

        google.maps.event.addDomListener(window, 'load', initialize);

    </script>
</head>
<body>

    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 portfolio-item">
        <div class="list-group-item">
        <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
            <div class="caption">
                <div class="caption-content">
                    <div class="row">
                        <div class="col-lg-7">
                            <h5>Usuario</h5>
                            <p>capasidad</p>
                            <p>BLABLABLA</p>
                            <i class="fa fa-search-plus">Mapa</i></div>
                        <div class="col-lg-3">
                            <h5>Origen:</h5>
                            <h5>Destino:LOL</h5>
                        </div>
                    </div>

                </div>
            </div>
        </a>
    </div>
</div>


<!--
<div class="row">
    <div id="map-canvas" style="width:100%; height:500px"></div>
</div>
<div class="row">
    <div id="directionsPanel">
        <p>Total Distance: <span id="total"></span></p>
    </div>
</div>
-->

<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-7">
                                <div id="map-canvas" style="width:100%; height:500px"></div>
                            </div>
                            <div class="col-lg-3">
                                <div id="directionsPanel">
                                    <p>Total Distance: <span id="total"></span></p>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="list-group-item">
                                    <h5>Informacion viaje</h5>
                                </div>

                            </div>
                        </div>

                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- jQuery -->
<script src="${resource(dir: 'js',file: 'jquery.js')}"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>

<!-- Plugin JavaScript -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="${resource(dir: 'js',file: 'classie.js')}"></script>
<script src="${resource(dir: 'js',file: 'cbpAnimatedHeader.min.js')}"></script>

<!-- Contact Form JavaScript -->
<script src="${resource(dir: 'js',file: 'jqBootstrapValidation.js')}"></script>


<!-- Custom Theme JavaScript -->
<script src="${resource(dir: 'js',file: 'freelancer.js')}"></script>

</body>
</html>