class PostController < ApplicationController
  def index
    @posts = Post.order('created_at desc').limit(5)
  end

  def show
    @posts = [Post.find(params[:id])]
    render 'index'
  end
end
