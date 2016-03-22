class PostsController < ApplicationController
    #all posts to be display, new post to be created
    def index
        if session[:user_id]
            @posts = Post.all.order("create_at DESC").paginate(page: params[:page], :per_page => 4)
            @post = Post.where(post_id: current_user)
            redirect_to root_path
        else
            flash[:alert] = "You must be logged in to view GymTalk reviews."
            redirect_to login_path
        end
    end
    
    def new
        @post = Post.new
    end   
    
    def show
        @post = Post.find(params[:id])
        @posts = @current_user.posts
        redirect_to gymplace_path
    end

    def edit
        @post = Post.find(params[:id])
        redirect_to 'index'
    end
        
    
    def create 
        #find the gymplace from the url  
        @gymplace = Gymplace.find(params[:gymplace_id])
        #build a record for a post for that gymplace with the submitted info from form
        @post = @gymplace.posts.build(post_params)
        #add the user_id of the current user
        @post.user = current_user
        
        if @post.save
            redirect_to gymplace_path(@gymplace)
        else
            redirect_to :back
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
    end
    
    
    private
    
    def post_params
        params.require(:post). permit(:post)
    end
       
end





