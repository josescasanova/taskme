class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.string :status, :category
      t.integer :provider_id, :customer_id

      t.timestamps
    end
  end
end
