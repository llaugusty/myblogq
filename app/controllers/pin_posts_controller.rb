class PinPostsController < ApplicationController
	before_action :find_pin_post, only: [:show, :edit, :update, :destroy]

  def index
    if current_user != nil
      @pinposts = current_user.pin_post
    end
  end

  def new 
    if signed_in?
  	  @pinpost = current_user.pin_post.build
    else
      redirect_to new_user_session_path
    end
  end

  def create
  	@pinpost = current_user.pin_post.build(pin_post_params)
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
