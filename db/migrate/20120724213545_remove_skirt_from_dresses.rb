class RemoveSkirtFromDresses < ActiveRecord::Migration
  def up
    remove_column :dresses, :skirt
  end

  def down
    add_column :dresses, :skirt, :string
  end
end
