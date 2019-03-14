class PostsController < ApplicationController

# before_action :authenticated_user!

  def title
  @post = Post.new
  end

  def index
    # @post = Post.order("id DESC").limit(8)
    @post_lucky = Post.where(genre_id: 0)
    @post_everyday = Post.where(genre_id: 1)
    @post_love = Post.where(genre_id: 2)
    @post_other = Post.where(genre_id: 3)
  end

  def new
    @post = Post.new
  end

 def show
  # @post = Post.where(id: params[:id])
  @post_lucky = Post.where(genre_id: 0,id: params[:id])
  @post_everyday = Post.where(genre_id: 1,id: params[:id])
  @post_love = Post.where(genre_id: 2,id: params[:id])
  @post_other = Post.where(genre_id: 3,id: params[:id])
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
    params.require(:post).permit(:text,:genre_id).merge(user_id: current_user.id)
  end

end
