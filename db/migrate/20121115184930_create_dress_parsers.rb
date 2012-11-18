class CreateDressParsers < ActiveRecord::Migration
  def change
    create_table :dress_parsers do |t|

      t.timestamps
    end
  end
end
