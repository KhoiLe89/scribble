class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.create!(post_params)
    @comment = Comment.create!(comments_params)
    redirect_to root_path
  end
  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
private
  def post_params
    params.require(:post).permit(:headline, :likes, :img_url)
  end
end
