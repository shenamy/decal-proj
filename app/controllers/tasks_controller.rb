class TasksController < ApplicationController
	def new
		@task = Task.new()
	end

	def create
		task = Task.create(description: params["task"]["description"], value: params["task"]["value"], user_id: current_user.id)
		task.save
		redirect_to '/'
	end

	def complete
		task = Task.find(params[:id])
		@user = User.find(current_user.id)
		@user.points += task.value
		@user.save
		task.destroy
		redirect_to '/'
	end

	def delete
		task = Task.find(params[:id])
		task.destroy
		redirect_to '/'
	end
end
