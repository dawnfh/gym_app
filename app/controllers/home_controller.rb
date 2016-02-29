class HomeController < ApplicationController

 
  before_action :current_user
  
	def landing
		@disable_nav = true 
		if current_user
			@gymplaces = Gymplace.order("created_at DESC").paginate(page: params[:page], :per_page => 2)
    	@gymplace = Gymplace.where(post_id: current_user)
			@posts = Post.all.order("created_at DESC").paginate(page: params[:page], :per_page => 2)
		end
	end

	def index
		
	end

end
