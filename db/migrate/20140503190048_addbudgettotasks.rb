class Addbudgettotasks < ActiveRecord::Migration
  def change
    add_column :tasks, :budget, :integer
  end
end
