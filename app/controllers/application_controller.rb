class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new  
  @post = Post.new
end

def create
	@post = Post.create(post_params)
	redirect_to posts_path
end

def index 
	@posts = Post.all
end


end