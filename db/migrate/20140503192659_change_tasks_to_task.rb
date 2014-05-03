class ChangeTasksToTask < ActiveRecord::Migration
  def change
    rename_column :proposals, :tasks_id, :task_id
  end
end
