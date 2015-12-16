class DeleteCollegesBuildings < ActiveRecord::Migration
  def change
    drop_table :colleges_buildings
  end
end
