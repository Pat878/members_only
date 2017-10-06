class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to allposts_path
    else
      redirect_to login_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:body, :user_id)
    end
end
