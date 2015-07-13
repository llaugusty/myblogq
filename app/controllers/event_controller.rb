class EventController < ApplicationController
  def index
  	if params[:title] != nil
  		@event = current_user.event.build(:title => params[:title], :time => params[:datadate])
  		@event.save
  		redirect_to root_path
  	end
  end
end
