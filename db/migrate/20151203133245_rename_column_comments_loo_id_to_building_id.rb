class RenameColumnCommentsLooIdToBuildingId < ActiveRecord::Migration
  def change
    rename_column :comments, :loo_id, :building_id
  end
end
