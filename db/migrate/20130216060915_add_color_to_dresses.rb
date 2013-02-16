class AddColorToDresses < ActiveRecord::Migration
  def change
    add_column :dresses, :color, :string
  end
end
