class DashboardController < ApplicationController

  def index
  	@tasks = current_user.tasks.all
  	user_id = current_user.id
  	@proposals = Proposal.where("provider_id = #{user_id}")
  end

end
