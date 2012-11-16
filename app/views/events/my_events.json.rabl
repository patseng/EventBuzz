collection @my_events_today

attributes :event_title, :id

code :friends_going do |event|
  current_user.friends_going(event).count
end