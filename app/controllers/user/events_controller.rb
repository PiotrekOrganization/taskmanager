class User::EventsController < User::UserController

	def index
		@events = Events.find(:all)
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event= Event.new
	end

	def create
		@event = Event.new(params[:event])
		@event.save!
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

end