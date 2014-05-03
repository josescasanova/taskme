class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    @task.customer_id = current_user.id
    @task.status = "Open"
    if @task.save
      flash[:success] = "You have successfully added a task"
      redirect_to tasks_path
    else
      flash[:error] = "You cannot add this task, check the errors."
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task =  Task.find(params[:id])
    if @task.update(task_params)
      flash[:success] = "This task has been updated."
      redirect_to tasks_path
    else
      flash[:error] = "Task has not been updated, see errors."
      render :edit
    end 
  end

  private

  def task_params
    params.require(:task).permit(:description, :status, :category, :title)
  end
end
