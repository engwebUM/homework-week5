class PostController < ApplicationController
  def index
    @posts = Post.order('created_at desc').limit(5)
  end

  def show
    @post = Post.find(params[:id])
  end
end
