$(function() {
  $(document).on('click', "#going", function() {
    var event_id = $('#event_id').val();
    $.ajax({
      url: "/rsvps",
      data: {event_id: event_id},
      type: "POST"
    });
  });
  $(document).on('click', "#not_going", function() {
    var event_id = $('#event_id').val();
    $.ajax({
      url: "/rsvps." + event_id,
      type: "DELETE"
    });
  });

});