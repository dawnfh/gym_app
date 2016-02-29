class GymplacesController < ApplicationController
  # all gyms to display here with users post
  def index
    if current_user
  	@gymplaces = Gymplace.all#.order("create_at DESC").paginate(page: params[:page], per_page: 2)
    @gymplace = Gymplace.where(post_id: current_user)
    redirect_to root_path
    end
  end

  def new
    @gymplace = Gymplace.new
  end

  def show
   @gymplace = Gymplace.find(params[:id])
    @gymplaces = current_user.gymplaces
    #changed @posts to be posts for the gym by all users
    #otherwise you are showing reviews for other gyms on the show page of the gym
    @posts = @gymplace.posts.order("created_at DESC").paginate(page: params[:page], per_page: 2)
    if current_user
      @post = @gymplace.posts.build
    end    
  end

  def create
    @gymplace = current_user.gymplaces.build(gymplaces_params)
    if @gymplace.save
      flash[:notice] = "Added"
      redirect_to current_user
    else
      flash[:alert] = "Not added"
      redirect_to :back 
    end
  end

  def edit
    @gymplace = Gymplace.find(params[:id])      
  end

  def update
    @gymplace = Gymplace.find(params[:id])
    if @gymplace.update_attributes(gymplaces_params)
      redirect_to  current_user
    end
  end

  def destroy
    session[:user_id] = nil
    @gymplace = Gymplace.find(params[:id])
    @gymplace.destroy
  end

private

  
  def gymplaces_params
      params.require(:gymplace).permit(:place, :description, :location, :city, :latitude, :zipcode, :email, :telephone ).merge(user_id: :curent_user)
  end
end