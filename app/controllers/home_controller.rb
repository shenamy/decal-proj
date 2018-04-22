class HomeController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @item = Item.find(@user.item_id)
    @task = Task.new()
  end

  def store
    #@user = User.find(current_user.id)
    @items = Item.all

  end


end
