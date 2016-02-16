class SessionsController < ApplicationController
    def new 
    
    end
    
    def create
        @user = User.find_by(username: params[:username])
        
        if @user && @user.authenticate(params[:password])
            flash[:notice] = "Welcome"
            session[:user_id] = @user.id
            redirect_to @user
        else
            flash.now[:alert] = "Your are not signed in."
            render 'new'
        end
    end

    def destroy 
        session[:user_id] = nil
        redirect_to root_path
    end 


end    

