class PinPostsController < ApplicationController
	before_action :find_pin_post, only: [:show, :edit, :update, :destroy]

  def index
  	@pinposts = PinPost.all
  end

  def new 
  	@pinpost = PinPost.new
  end

  def create
  	@pinpost = PinPost.new(pin_post_params)
  	if @pinpost.save
  		redirect_to @pinpost
  	else
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end

  def update
	  if @pinpost.update(pin_post_params)
	  	redirect_to root_path
	  else
	  	render 'edit'
	  end
  end

  def destroy
  	@pinpost.destroy
  	redirect_to root_path
  end 

  private 

  def pin_post_params
  	params.require(:pin_post).permit(:title, :content, :image)
  end

  def find_pin_post
  	@pinpost = PinPost.find(params[:id])
  end
end
