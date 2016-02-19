class UsersController < ApplicationController
  # all users will be displayed
  def index
    @users = User.all
  end
  
  
  #@user is new user instance
  def new
    @user = User.new
  end
  
  
  #create a new user w/params
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Your profile has been create."
        session[:user_id] = @user.id
      redirect_to user_path(@user) 
     else
       flash[:notice] = "No profile created."
       redirect_to :back
    end
  end
   
    # user is displayed by params
     def show
       @user = User.find(params[:id])
       @posts = current_user.posts
     end
     
    # editing user by params
    def edit
      @user = User.find(params[:id])
    end
    
    
    # def update
    def update
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        redirect_to @user
      else
        redirect_to :back
      end 
    end
    
    
    # destroys a user 
    def destroy
      session[:user_id] = nil
      @user = User.find(params[:id])
      @user.destroy 
    end
    
        
      # parameters for
      private
      
      def user_params
        params.require(:user).permit(:fname, :lname, :username, :sex, :password, :email, :avatar)
      end
end
  
      
  

  
    
