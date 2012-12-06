task :update_events => :environment do
  Event.all.each do |event|
  	datetime = DateTime.civil(2012,12,12,9,0,0)
    event.start_datetime = datetime
    event.save
  end
  rose_bowl = Event.find_by_event_title("Rose Bowl")
  rose_bowl.event_title = "Rose Bowl"
  rose_bowl.description = "The 99th edition of the Rose Bowl featuting your Stanford Cardinal versus the Wisconsin Badgers"
  rose_bowl.location = "The Rose Bowl, Los Angeles"
  rose_bowl.start_datetime = DateTime.civil(2013,1,1,13,0,0)
  rose_bowl.save
end
