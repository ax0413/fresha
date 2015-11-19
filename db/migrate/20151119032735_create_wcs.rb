class CreateWcs < ActiveRecord::Migration
  def change
    create_table :wcs do |t|

      t.timestamps null: false
    end
  end
end
