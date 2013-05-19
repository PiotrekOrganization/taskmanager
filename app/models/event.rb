class Event < ActiveRecord::Base
  
  attr_accessible :name, :priority, :datetime_start, :datetime_end, :min_task_minutes, :fixed

  belongs_to :user

  # general validation
  validates_presence_of :name
  validate :start_time_lt_end_time

  # fixed event validation
  validates_presence_of :datetime_start, :if => :fixed
  validates_presence_of :datetime_end, :if => :fixed

  # dynamic event validation
  validates_presence_of :priority, :unless => :fixed
  validates_presence_of :min_task_minutes, :unless => :fixed
  validate :datetime_or_minutes_to_go, :unless => :fixed

  private

    # event should provide minutes to go or datetime_start, datetime_end - not both
    def datetime_or_minutes_to_go
      if !(minutes_to_go.blank? ^ (datetime_start.blank? and datetime_end.blank?))
	  		errors.add(:datetime_start, "one of date or minutes to go have to be specified")
      end
    end

    # datetime end should be greater than start datetime
    def start_time_lt_end_time
	  	if datetime_end.blank? or datetime_start.blank?
	  		return true
	  	end
	  	if datetime_start > datetime_end
	  		errors.add(:datetime_start, "have to be earlier than end date")
	  	else
	  		return true
		  end  
  	end

end
