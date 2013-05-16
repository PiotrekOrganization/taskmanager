class User < ActiveRecord::Base

	include RailsSettings::Extend 

	has_many :events

	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  	attr_accessible :email, :password, :password_confirmation, :remember_me

  	def working_day
  		self.settings.working_days
  	end

  	def default_settings
  		self.settings.working_days = {:mon => true, :tue => true, :wed => true, :thu => :true, :fri => true, :sat => false, :sun => false}
  	end

end
