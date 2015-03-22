class CategoryController < ApplicationController
  def show
    @posts = Post.where(category: Category.where(name: params[:id])).order("created_at desc")

    render 'archive/index'
  end
end
