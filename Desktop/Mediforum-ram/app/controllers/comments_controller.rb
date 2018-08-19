class CommentsController < ApplicationController
	before_action :find_post
	def create 
		
		@comment  = @post.comments.create(params[:comment].permit[:comment])
		@comment.user_id = current_user
		@comment.save

		if @comment.save
			render 'new'
		else
			 redirect_to post_path(@post)
        
		end
	end

	private 

	def find_post
		@post = Post.find(params[:post_id])
	end


end
