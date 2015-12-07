class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :loo_id
      t.integer :bidet
      t.integer :bok, default: 0
      t.integer :chung, default: 0
      t.integer :bun, default: 0
      t.text :comment
      t.string :floor

      t.timestamps null: false
    end
  end
end
