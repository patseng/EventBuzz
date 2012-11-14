$(document).ready(function() {

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
		scrollbarOpacity: '0.85',
		// onSlideChange: changeSlideIdentifier
	});

});