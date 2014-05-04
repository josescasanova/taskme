module TasksHelper
	def user_proposal?(task)
  	task.proposals.each do |proposal|
  		return true if proposal.provider_id == current_user.id
  	end
  	return false
  end
end
