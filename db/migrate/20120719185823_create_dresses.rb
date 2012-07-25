class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :fabric
      t.string :neckline
      t.string :skirt

      t.timestamps
    end
  end
end
