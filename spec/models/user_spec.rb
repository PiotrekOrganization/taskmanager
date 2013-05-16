require 'spec_helper'

describe User do

	before do
		@user = User.new
	end

	it "assigns user max work time" do
		@user.max_work_time = 360
		@user.max_work_time.should eq 360
	end

	it "assigns user working week days" do
		@user.work_day.monday = true
		@user.work_day.tuesday = true
		@user.work_day.wednesday = true
		@user.work_day.thursday = true
		@user.work_day.friday = true
		@user.work_day.saturday = false
		@user.work_day.sunday = false
	end

	it "assigns user completed events" do
		@user.completed_events.should eq []
	end

	it "assigns user processing events" do
		@user.processing_events.should eq []
	end

	it "assigns user future events" do
		@user.futute_events.should eq []
	end

end
