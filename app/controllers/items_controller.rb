class ItemsController < ApplicationController
  def buy
    item = Item.find(params[:id])
    if current_user.points < item.cost
      flash[:error] = "Not enough points!"
    else
      user = User.find(current_user.id)
      user.points -= item.cost
      user.item_id = params[:id]
      user.save
      flash[:success] = "Bought item."
    end
    redirect_to store_path
  end
end
