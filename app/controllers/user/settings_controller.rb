# encoding: utf-8
class User::SettingsController < User::UserController

	def index
		@settings = current_user.settings.all	
	end

	def update
		working_days = Hash.new
		params[:workingday].each do |day, value|
			if value == '1'
				value = true
			else 
				value = false
			end
			working_days[day.to_sym] = value
		end
		current_user.settings.working_days = working_days
		flash[:notice] = "Ustawienia zostały zapisane"
		redirect_to user_settings_path
	end

	def default
		current_user.default_settings
		flash[:notice] = "Domyślne ustawienia zostały przywrócone"
		redirect_to user_settings_path
	end

end