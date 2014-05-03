class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.text :description
      t.integer :price
      t.timestamps
    end
  end
end
