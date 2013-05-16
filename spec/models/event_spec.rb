require "spec_helper"

describe Event do

	before do
		@event = Event.new
	end
  
	it "has a name" do
		@event.name = "test"
		@event.name.should eq "test"
	end

	before do
		@event.name = "test"
	end

	it "is fixed event" do
		@event.fixed = true
		@event.fixed.should eq true
	end

	it "fixed event should has datetime_start datetime_end" do
		@event.fixed = true
		@event.valid?.should eq false
		@event.datetime_start = DateTime.now
		@event.valid?.should eq false
		@event.datetime_end = DateTime.now - 5.hour
		@event.valid?.should eq false
		@event.datetime_end = DateTime.now + 5.hour
		@event.valid?.should eq true
	end

	it "dynamic event could have datetime_start and datetime_end" do
		@event.fixed = false
		@event.priority = 5.5
		@event.valid?.should eq false
		@event.datetime_start = DateTime.now
		@event.datetime_end = DateTime.now + 5.hour
		@event.valid?.should eq false
		@event.min_task_minutes = 2
		@event.valid?.should eq true
	end

	it "or dynamic event could have hours to go" do
		@event.fixed = false
		@event.priority = 5.5
		@event.valid?.should eq false
		@event.minutes_to_go = 10
		@event.valid?.should eq false
		@event.min_task_minutes = 2 
		@event.valid?.should eq true
	end

	it "dynamic event has a priority" do
		@event.priority = 5.5
		@event.priority.should eq 5.5
	end

end