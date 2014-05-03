class Addusertoproposals < ActiveRecord::Migration
  def change
    add_column :proposals, :provider_id, :integer
    add_column :proposals, :customer_id, :integer
  end
end
