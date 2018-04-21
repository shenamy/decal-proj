class HomeController < ApplicationController
  def index
    @user = User.find(current_user.id)
  end

  def store
    #@user = User.find(current_user.id)
    @sheens = Avatar.all 

  end
end
