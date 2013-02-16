class AddUrlToDresses < ActiveRecord::Migration
  def change
    add_column :dresses, :url, :string
  end
end
