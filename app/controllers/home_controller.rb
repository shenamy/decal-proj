class HomeController < ApplicationController
  def index
    @user = User.find(current_user.id)
  end

  def store
    #@user = User.find(current_user.id)
    @items = Item.all

  end


end
