class WelcomeController < ApplicationController
  def index
  end

  def sample 
  	@controller_message = "Hello controller"
  end 
end
