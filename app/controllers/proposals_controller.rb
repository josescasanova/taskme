class ProposalsController < ApplicationController

  #  def index
  #   @proposals = Proposal.where
  # end
  def show
  end

  def new
    @task = Task.find(params[:task_id])
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.create(proposal_params)
    @proposal.task_id = params[:task_id]
    @proposal.provider_id = current_user.id
    if @proposal.save
      flash[:notice] = "You have successfully submitted a proposal."

      redirect_to tasks_path

    else
      flash[:alert] = "You cannot add this proposal, check the errors."
    end
  end

  def destroy
    proposal = Proposal.find(params[:id])
    proposal.destroy
    redirect_to user_task_path(current_user, params[:task_id])
  end

  def accepted

   prop = Proposal.where(id: params[:proposal]).first

   if User.has_enough_points?(current_user, prop.price)

     prop.accepted = true

     find_the_task = Task.where(id: prop.task_id).first
     find_the_task.status = "Processing"
     find_the_task.save!
     prop.save!
   else
    flash[:alert] = "Sorry, but you don't have enough points"
    redirect_to dashboard_path
   end
  end

  def declined
   prop = Proposal.where(id: params[:proposal]).first
   prop.accepted = false
   prop.save!
   redirect_to dashboard_path
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
    params.require(:proposal).permit(:description, :price, :task_id, :provider_id, :accepted)
  end
end
