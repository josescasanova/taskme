class ProposalsController < ApplicationController

  #  def index
  #   @current_user = current_user
  #   @tasks = Task.all
  # end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.create(proposal_params)
    if @proposal.save
      flash[:notice] = "You have successfully submitted a proposal."
      redirect_to tasks_path
    else
      flash[:alert] = "You cannot add this proposal, check the errors."
      render :new
    end
  end

  # def show
  #   @task = Task.find(params[:id])
  # end

  # def edit
  #   @task = Task.find(params[:id])
  # end

  # def update
  #   @task =  Task.find(params[:id])
  #   if @task.update(task_params)
  #     flash[:notice] = "This task has been updated."
  #     redirect_to tasks_path
  #   else
  #     flash[:alert] = "Task has not been updated, see errors."
  #     render :edit
  #   end 
  # end

  # private

  def proposal_params
    params.require(:proposal).permit(:description, :price)
  end
end
