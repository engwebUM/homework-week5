class PostController < ApplicationController
  def index
    @posts = Post.order('created_at desc').limit(5)
  end

  def show
    @posts = [Post.find(params[:id])]
    @page_title = "#{@posts[0].title}, by #{@posts[0].author.name} of Group Buddies"
    render 'index'
  end
end
