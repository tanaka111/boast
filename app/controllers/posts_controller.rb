class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
    # binding.pry
  end

 def show
  @post = Post.all
 end

def create
  @post = Post.new(posts_params)
  binding.pry
  Post.create(text: posts_params[:text])
  redirect_to action: :show
end

def update

end

  private
    def posts_params
    params.require(:post).permit(:text)
  end

end
