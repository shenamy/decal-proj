class HomeController < ApplicationController
  def index
    @user = User.find(current_user.id)
    default = Avatar.where(name: "0", user_id: current_user.id)
    if default.count == 0
      Avatar.create(name: "0", user_id: current_user.id)
    end
    @task = Task.new()
    if @user.item_id != -1
      @item = Item.find(@user.item_id)
    end
    if @user.points >= @user.tpoints and @item and @user.level == (@item.cost / 100 - 1)
      @user.level += 1
      @user.save
      Avatar.create(name: @user.level, user_id: current_user.id)
    end
    @avatars = Avatar.where(user_id: current_user.id)
  end

  def store
    @items = Item.all
    @user = User.find(current_user.id)
  end

  def change
    @user = User.find(current_user.id)
    @user.pic = params[:id]
    @user.save
    redirect_to root_path
  end
end
