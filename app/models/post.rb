class Post < ActiveRecord::Base
	validates :image, presence: true

	has_attached_file :image, styles: { medium: "640px640px>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end


def create 
	@post = Post.create(params[:post])
	redirect_to posts_path
end


private

def post_params
	params.require(:post).permit(:image, :caption)
end

def index
	@posts = Post.all
end




