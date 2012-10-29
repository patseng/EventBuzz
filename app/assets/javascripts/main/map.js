$(function() {
  var mapOptions = {
    center: new google.maps.LatLng(37.42841, -122.16960),
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var map = new google.maps.Map(document.getElementById("map_canvas"),
  mapOptions);

  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(37.42137,	-122.1719),
    map: map,
    title: "Dodgeball Tournament!"
  });
  
  var contentString = '<div id="content">' +
                        '<h1>Dodgeball Tournament!</h1>' +
                      '</div';
                      
  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });
  
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });

  var the_height = ($(window).height() - 
                    $(this).find('[data-role="header"]').height() - 
                    $(this).find('[data-role="footer"]').height());
                    
  $(this).height($(window).height()).find('[data-role="content"]').height(the_height);
});