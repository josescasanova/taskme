class Removecustomertoproposals < ActiveRecord::Migration
  def change
    remove_column :proposals, :customer_id, :integer
  end
end
