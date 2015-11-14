class CreateLoos < ActiveRecord::Migration
  def change
    create_table :loos do |t|
      t.string :location
      t.integer :floor

      t.timestamps null: false
    end
  end
end
