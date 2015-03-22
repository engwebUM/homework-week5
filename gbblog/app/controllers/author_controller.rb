class AuthorController < ApplicationController
  def show
    @posts = Post.where(author: Author.where(name: params[:id].titleize)).order("created_at desc")

    render 'archive/index'
  end
end
