class PostsController < ApplicationController
end

def index
	@posts = Post.all.order(created_at: :desc)
end

def new 
	@post = Post.new
end

def destroy
	@post = Post.find(params[:id])
	@post.destroy
	redirect_to posts_path
end


def show
	@post = Post.find(params[:id])
end


