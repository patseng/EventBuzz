class TimingTest < ActiveRecord::Base
  belongs_to :user
  
  def difference
    if self.find_timestamp and self.detail_timestamp
      self.detail_timestamp - self.find_timestamp 
    else
      "N/A"
    end
  end
end
