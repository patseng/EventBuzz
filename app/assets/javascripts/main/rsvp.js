$(function() {
  $(document).on('click', "#going", function() {
    mixpanel.track("going");
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
        updateMyEvents();
      }
      
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
          updateMyEvents();
          break;
        }
      }
    }
  });

});