class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.integer :college_id
      t.string :bname
      t.timestamps null: false
    end
  end
end
