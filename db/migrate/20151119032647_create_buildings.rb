class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.integer :college_id
      t.timestamps null: false
    end
  end
end
