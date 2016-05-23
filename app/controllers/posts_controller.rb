class PostsController < ApplicationController
end

def new 
	@post = Post.new
end

def destroy
	@post = Post.find(params[:id])
	@post.destroy
	redirect_to posts_path
end




