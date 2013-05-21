class User::DashboardController < User::UserController

	def index

	end

	def calendar
		render :json => current_user.schedule	
	end

end