class Proposal < ActiveRecord::Base
  belongs_to :user
  belongs_to :task


  def self.for_current_user(task, current_user)
  	id = current_user.id
  	task.proposals.where("provider_id = #{id}").first
  end
end
