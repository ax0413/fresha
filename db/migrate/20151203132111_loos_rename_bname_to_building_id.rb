class LoosRenameBnameToBuildingId < ActiveRecord::Migration
  def change
    rename_column :loos, :bname, :building_id
    change_column :loos, :building_id, :integer
  end
end
