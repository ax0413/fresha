class CreateWcs < ActiveRecord::Migration
  def change
    create_table :wcs do |t|
      t.integer :college_id
      t.integer :building_id
      t.timestamps null: false
    end
  end
end
