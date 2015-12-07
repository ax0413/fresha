class DeleteBuildings < ActiveRecord::Migration
  def change
    drop_table :buildings
  end
end
