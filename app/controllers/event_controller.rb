class EventController < ApplicationController
  def index
  	if user_signed_in?
  		@event = current_user.event
  	else 
  		@event = nil
  	end

  	respond_to do |format|
  		format.json { render json: @event}
  	end
  end

  def shows
  	@event = current_user.event.where(time: params[:time])

  	respond_to do |format|
  		format.json { render json: @event}
  	end
  end

  def edit
    datadate = params[:datadate]
    params.delete(:utf8);
    params.delete(:authenticity_token)
    params.delete(:datadate)
    params.delete(:controller)

    params.each do |key, value| 
      if !key.include? "new" and key !~ /\D/
        event = Event.find(key);
        if value != ""
          event.title = value
        else
          event.delete
        end
        event.save
      else
        if key.include? "new" and value != ""
          event = current_user.event.build(time: datadate, title: value)
          event.save
        end
      end
    end

    redirect_to root_path
  end
end
