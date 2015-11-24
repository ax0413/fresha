class CreateLoos < ActiveRecord::Migration
  def change
    create_table :loos do |t|
      t.string :location
      t.integer :floor
      t.float :avg

      t.timestamps null: false
    end
  end
end
