class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :cname
      t.timestamps null: false
    end
  end
end
