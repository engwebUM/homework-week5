class BlogController < ApplicationController
  def index
  	@images = Image.all
    @articles = Article.all
  end

  def search name
  	@images.each do |image|
  		if image.name == name
  			return image.file
  		end
  	end
  end			
end
