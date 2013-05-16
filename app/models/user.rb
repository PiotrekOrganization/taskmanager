class User < ActiveRecord::Base

	has_many :events

	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  	attr_accessible :email, :password, :password_confirmation, :remember_me

end