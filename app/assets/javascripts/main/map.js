$(function() {
  var mapOptions = {
    center: new google.maps.LatLng(-34.397, 150.644),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var map = new google.maps.Map(document.getElementById("map_canvas"),
  mapOptions);

  var the_height = ($(window).height() - 
                    $(this).find('[data-role="header"]').height() - 
                    $(this).find('[data-role="footer"]').height());
                    
  $(this).height($(window).height()).find('[data-role="content"]').height(the_height);
});