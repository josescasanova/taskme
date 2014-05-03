class ChangesTasksid < ActiveRecord::Migration
  def change
    rename_column :proposals, :tasks_id, :tasks_id
  end
end
