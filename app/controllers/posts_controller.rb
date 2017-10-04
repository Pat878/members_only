class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
  end

  def create
    @post = Post.new(user_params)

  end

  private

  def post_params
    params.require(:post).permit(:body, :user_id)
    end
end
