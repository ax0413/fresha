class ChangeLoosToBuildings < ActiveRecord::Migration
  def change
    rename_table :loos, :buildings
  end
end
