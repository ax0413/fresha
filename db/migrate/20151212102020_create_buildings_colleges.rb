class CreateBuildingsColleges < ActiveRecord::Migration
  def change
    create_table :buildings_colleges do |t|
      t.references :building, index: true, foreign_key: true
      t.references :college, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
