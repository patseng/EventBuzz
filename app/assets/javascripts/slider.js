$(document).ready(function() {
  $(document).on("pageshow", function(test) {
    if ($.mobile.activePage.attr("id") == "find") {
      // this is a hack, the update method throws an error but actually does 
      // render the slider, so we have to iterate over each slider and update
      // it but also catch the error
      $.each($('.iosSlider'), function() {
        try {
          $(this).iosSlider('update'); 
        } catch (err) {}
      })
    }
  });
  /* basic - default settings */
  $('.iosSlider').iosSlider();

  /* some custom settings */
  $('.iosSlider').iosSlider({
    snapToChildren: true,
    scrollbar: true,
    scrollbarHide: false,
    desktopClickDrag: true,
    scrollbarLocation: 'bottom',
    scrollbarHeight: '6px',
    scrollbarBackground: 'url(_img/some-img.png) repeat 0 0',
    scrollbarBorder: '1px solid #000',
    scrollbarMargin: '0 30px 16px 30px',
    scrollbarOpacity: '0.85'
    // onSlideChange: changeSlideIdentifier
  });

});