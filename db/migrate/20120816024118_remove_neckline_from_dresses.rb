class RemoveNecklineFromDresses < ActiveRecord::Migration
  def change
  	remove_column :dresses, :neckline
  end
end
