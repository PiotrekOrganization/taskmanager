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
  	end

    def future_events
        self.events.where('datetime_start >?', Time.current)
    end

    def current_events

    end

    def past_events
    end

end
