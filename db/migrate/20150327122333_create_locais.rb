class CreateLocais < ActiveRecord::Migration
  def change
    create_table :locais do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
