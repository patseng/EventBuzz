$(function() {
  function contains(events, event) {
    var contains = false;
    var length = gon.my_events.length;
    for (var i = 0; i < length; i++) {
      if (gon.my_events[i].id == gon.event.id) {
        contains = true;
        break;
      }
    }
    return contains;
  }

  function updateButtonColors() {  
    var going = contains(gon.my_events, gon.event);
    if (!going) {
      // make going white
      $('#going').buttonMarkup({ theme: "d" });
      
      // make not_goint blue
      $("#not_going").removeClass('ui-btn-hover-d')
      $('#not_going').buttonMarkup({ theme: "b" });
    }
    else {
      // make going blue
      $('#going').removeClass('ui-btn-hover-d')
      $('#going').buttonMarkup({ theme: "b" });
      // make not going white
      $('#not_going').buttonMarkup({ theme: "d" });
    }
  }
  
  $(document).on("pageshow", function(test) {
    if ($.mobile.activePage.attr("id") == "event_detail") {
      updateButtonColors();
    }
  });
  
  $(document).on('click', "#going", function() {
    if (gon.signed_in) {
      $.ajax({
        url: "/rsvps",
        data: {event_id: gon.event.id},
        type: "POST"
      });
    }
    
    if (gon.my_events) {
      // search for event
      var length = gon.my_events.length;
      var found = false;
      for (var i = 0; i < length; i++) {
        if (gon.my_events[i].id == gon.event.id) {
          found = true;
          break;
        }
      }
      
      if (!found) {
        // add event
        gon.my_events.push(gon.event);
        updateButtonColors();
        updateMyEvents();
      }
      

      // Well have to override jquerymobile in order to get an aesthetically pleasing color change...
      // setTimeout(function() {
      //   $('#going').attr("data-theme", "b").removeClass("ui-btn-up-d").addClass("ui-btn-up-b");
      // }, 700)
    }
  });
  
  $(document).on('click', "#not_going", function() {
    if (gon.signed_in) {
      $.ajax({
        url: "/rsvps." + gon.event.id,
        type: "DELETE"
      });
    }
    
    if (gon.my_events) {
      // search for event
      var length = gon.my_events.length;
      for (var i = 0; i < length; i++) {
        if (gon.my_events[i].id == gon.event.id) {
          gon.my_events.remove(i);
          updateButtonColors();
          updateMyEvents();
          break;
        }
      }
    }
    

  });

});