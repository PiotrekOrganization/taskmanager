class User::EventsController < User::UserController

	def index
		@events = Events.find(:all)
	end

	def show
		#@event = Event.find(params[:id])
	end

	def new
		@event= Event.new
	end

	def create
		@event = Event.new(params[:event])
		@event.user = current_user
		@event.save!
		render "show"
	end

	def edit
		@event = Event.find(params[:id])

	end

	def update
		@event = Event.find(params[:id])
		if @event.update_attributes(params[:event])
        	redirect_to :action => 'show', :id => @event
      	else         	
         	render :action => 'edit'
      	end

	end

	def delete 
		Event.find(params[:id]).destroy
     	redirect_to :action => 'index'
	end

	def eventsFinished
		@events = Event.where('datetime_end <=?', Time.current)
		#render :json => @events
	end

	def futureEvents
		@events = current_user.future_events
	end

	def duringEvents
		@events = Event.where("datetime_start <= '#{Time.current}' AND datetime_end  >= '#{Time.current}'")
	end

end