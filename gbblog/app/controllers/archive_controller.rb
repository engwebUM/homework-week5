class ArchiveController < ApplicationController
  def index
    @posts = Post.order("created_at desc")
  end

  def show
    @posts = Post.where(category: Category.where(name: params[:id])).order("created_at desc")

    render action: 'index'
  end
end
