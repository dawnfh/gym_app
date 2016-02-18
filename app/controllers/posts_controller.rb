class PostsController < ApplicationController
    #all posts to be display, new post to be created
    def index
        if session[:user_id]
            @posts = Post.all.order("created_at DESC").paginate(page: params[:page], per_page: 2)
            @post = Post.where(post_id: current_user)
            redirect_to root_path
        else
            flast[:alert] = "You must be logged in to view GymTalk reviews."
        redirect_to login_path
        end
    end
    
    
    def new
        @post = Post.new
    end   
    
    def show
        @post = Post.find(params[:id])
        @posts = @current_user.posts
        redirect_to 'index'
    end

    def edit
        @post = Post.find(params[:id])
        redirect_to 'index'
    end
        
    
    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            redirect_to  current_user
        else
            redirect_to :back
        end
    end
    
    
    def destroy
        @post = Post.find params[:id]
        @post.destroy
    end
    
    
    private
    
    def post_params
        params.require(:post). permit(:post, :place, :location, :city)
    end
       
end





