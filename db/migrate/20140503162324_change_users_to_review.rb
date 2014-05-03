class ChangeUsersToReview < ActiveRecord::Migration
  def change
    remove_column :reviews, :users_id, :integer
    add_column :reviews, :task_id, :integer
  end
end
