class RenameBudgetForTask < ActiveRecord::Migration
  def change
  	change_column :tasks, :budget, :string
  end
end
