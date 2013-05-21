class User < ActiveRecord::Base

	include RailsSettings::Extend 

	has_many :events
	after_create :default_settings

	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  	attr_accessible :email, :password, :password_confirmation, :remember_me

  	def working_day
  		self.settings.working_days
  	end
 
  	def default_settings
  		self.settings.working_days = {:mon => true, :tue => true, :wed => true, :thu => :true, :fri => true, :sat => false, :sun => false}
  		self.default_settings.starting_work = "8:00"
  		self.default_settings.ending_work = "16:00"
  	end

    def future_events
        self.events.where('datetime_start >?', Time.current)
    end

    def current_events

    end

    def past_events
    end


    def schedule
        listEvents = []
        activeEvents = self.future_events.to_a
        puts activeEvents.inspect
        now = DateTime.current
        while activeEvents.size > 0
            puts 1
            for event in activeEvents
                if now.strftime('%H').to_i >= 8 and now.strftime('%H').to_i < 16
                    event_part = {:id => event.id, :name => event.name, :start => now, :end => now + 2.hour}
                    listEvents.append event_part
                    event.minutes_to_go -= 120
                    puts 2
                    if event.minutes_to_go <= 0
                        activeEvents.delete event
                        puts 3

                    end
                end
                now += 2.hour
            end
        end
        return listEvents

    end

end
