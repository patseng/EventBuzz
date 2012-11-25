class TimingTestsController < ApplicationController
  def find_timestamp
    if current_user
      previous_timing_test = TimingTest.find_by_user_id(current_user.id)
      if !previous_timing_test
        timing_test = TimingTest.new({:user_id => current_user.id, :find_timestamp => Time.now })
        timing_test.save
      end
    end
    render :nothing => true
  end
  
  def event_detail_timestamp
    timing_test = TimingTest.find_by_user_id(current_user.id)
    if !timing_test.detail_timestamp
      timing_test.detail_timestamp = Time.now
      timing_test.save
    end
    render :nothing => true
  end
  
end
