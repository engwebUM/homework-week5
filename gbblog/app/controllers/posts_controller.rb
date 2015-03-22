class PostsController < ApplicationController
  def index
    @posts = Post.all.limit(5).reverse
  end

  def show
    @post = Post.find(params[:id])
  end
end
