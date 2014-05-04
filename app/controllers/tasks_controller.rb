class TasksController < ApplicationController

  def index
    @tasks = Task.where(customer_id: current_user.id)
  end

  def new
    @task = current_user.tasks.new
  end

  def create
    @task = current_user.tasks.create(task_params)
    @task.customer_id = current_user.id
    @task.status = "Open"

    if @task.save
      flash[:notice] = "You have successfully added a task"
      redirect_to dashboard_path(current_user)
    else
      flash[:alert] = "You cannot add this task, check the errors."
      render :new
    end
  end

  def show

    @task = Task.find(params[:id])
    @current_user = current_user
    @proposals = @task.proposals.all
  end

  def edit
    @task = Task.find(params[:id])

  end

  def update
    @task =  Task.find(params[:id])
    if @task.update(task_params)
      flash[:notice] = "This task has been updated."
      redirect_to user_tasks_path(current_user)
    else
      flash[:alert] = "Task has not been updated, see errors."
      render :edit
    end 
  end

  def destroy
    
    @task = Task.find(params[task_id]) 
    
      @task.destroy
      redirect_to "index"
  end

  private

  def task_params
    params.require(:task).permit(:description, :location, :status, :category, :title, :budget)
  end
end
