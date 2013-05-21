class User::DashboardController < User::UserController

	def index

	end

	def calendar
		@events = current_user.schedule	
	end

end