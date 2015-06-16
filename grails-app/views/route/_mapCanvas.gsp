<script>
    var rendererOptions = {
        draggable: true
    };
    var directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);;
    var directionsService = new google.maps.DirectionsService();
    var map;
    var colombiaBogota = new google.maps.LatLng(4.6136119,-74.1143092);
    function initialize(map) {
        var mapOptions = {
            zoom: 7,
            center: colombiaBogota
        };
        map = new google.maps.Map(document.getElementById("${div}map"), mapOptions);
        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('directionsPanel'));
        google.maps.event.addListener(directionsDisplay, 'directions_chan' +
        'ged', function() {
            computeTotalDistance(directionsDisplay.getDirections());
        });
        calcRoute("${begin}","${end}");
    }
    function calcRoute(begin,end) {
        var request = {
            origin: begin,
            destination: end,
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

<div class="col-lg-12">
    <div id="${div}map" style="width:100%; height:500px;"></div>
</div>
