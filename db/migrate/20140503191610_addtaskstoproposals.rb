class Addtaskstoproposals < ActiveRecord::Migration
  def change
    add_column :proposals, :tasks_id, :integer
  end
end
