var marker;
var map;

function initialize() {
  var myLatlng = new google.maps.LatLng(-33.44903311049065,-70.62169429999994);
  var mapOptions = {
    zoom: 17,
    center: myLatlng
  };

   map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h2 id="firstHeading" class="firstHeading">Oficina Linternas Tácticas</h2>'+
      '<div id="bodyContent">'+
      '<p><b>Dirección:</b> RENGO 1015, Dpto 102-A, casi esquina Salvador, Ñuñoa'+
      '</div>'+
      '</div>';

  var infowindow = new google.maps.InfoWindow({
      content: contentString
  });

   marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'Oficina Linternas Tácticas',
      animation: google.maps.Animation.DROP
  });
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });

   google.maps.event.addListener(marker, 'click', toggleBounce);
}

	function toggleBounce() {

	  if (marker.getAnimation() != null) {
	    marker.setAnimation(null);
	  } else {
	    marker.setAnimation(google.maps.Animation.BOUNCE);
	  }
	}

$(document).on('page:load',initialize);

