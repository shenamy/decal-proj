class TasksController < ApplicationController
	def new
		@task = Task.new()
	end

	def create
		task = Task.create(description: params["task"]["description"], value: params["task"]["value"], user_id: current_user.id)
		task.save
		redirect_to '/'
	end
end