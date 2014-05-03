class AddUserssToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :users_id, :integer
  end
end
