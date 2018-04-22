class HomeController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @task = Task.new()
  end
end
