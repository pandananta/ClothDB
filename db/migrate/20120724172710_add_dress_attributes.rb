class AddDressAttributes < ActiveRecord::Migration
  def change
  	add_column :dresses, :source, :string
  	add_column :dresses, :image, :string
  	add_column :dresses, :brand, :string
  	add_column :dresses, :title, :string
  	add_column :dresses, :sizing, :string
  	add_column :dresses, :price, :integer
  	add_column :dresses, :fans, :integer
  	add_column :dresses, :neck_type, :string
  	add_column :dresses, :sleeve_type, :string
  	add_column :dresses, :skirt_type, :string
  	add_column :dresses, :skirt_length, :string
  	
  end 
end
