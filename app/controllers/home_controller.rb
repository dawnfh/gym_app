class HomeController < ApplicationController

 
  before_action :current_user
  
	def landing
		@disable_nav = true 
		if current_user
			@gymplaces = Gymplace.order("created_at DESC").paginate(page: params[:page], :per_page => 4)
    	@gymplace = Gymplace.where(post_id: current_user)
			@posts = Post.all.order("created_at DESC").paginate(page: params[:page], :per_page => 4)
		end
	end

	def about
		
	end

end
