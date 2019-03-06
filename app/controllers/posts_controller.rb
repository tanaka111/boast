class PostsController < ApplicationController

# before_action :authenticated_user!

  def title
  @post = Post.new
  end

  def index
    @post = Post.order("id DESC").limit(8)
  end

  def new
    @post = Post.new
  end

 def show
  @post = Post.where(id: params[:id])
 end

def create
  @post = Post.new(posts_params)
  @post.save
  redirect_to posts_path(@post)

end

def edit
 @post = Post.find(params[:id])
end


def update
  @post = Post.find(params[:id])
  @post.update(posts_params)
 redirect_to action: "index"
end

def destroy
  post = Post.find(params[:id])
  post.destroy
  redirect_to action: "index"
end

  private
    def posts_params
      binding.pry
    params.require(:post).permit(:text,:genre_id).merge(user_id: current_user.id)
  end

end
