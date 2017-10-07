class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
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

  def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
  end
end
