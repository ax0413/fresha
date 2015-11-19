class CreateLoos < ActiveRecord::Migration
  def change
    create_table :loos do |t|
      t.string :bname
      t.integer :floor
      
      
      t.timestamps null: false
    end
  end
end
