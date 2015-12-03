class AddLoosToCollegeIdBname < ActiveRecord::Migration
  def change
    add_column :loos, :college_id, :integer
    add_column :loos, :bname, :string
  end
end
