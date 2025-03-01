class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task), notice: "Task was successfully created!"
    else
      render :new
    end
  end

  def edit
      @task = Task.find(params[:id])
    end

  def update
    @task = Task.find(params[:id])
    if @task.update(tasks_params)
      redirect_to tasks_path, notice: "Task was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: "TAsk was successfully deleted!"
  end
end
