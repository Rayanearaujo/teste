class CreateObjetos < ActiveRecord::Migration
  def change
    create_table :objetos do |t|
      t.references :crime, index: true
      t.references :vitima, index: true
      t.string :descricao

      t.timestamps null: false
    end
    add_foreign_key :objetos, :crimes
    add_foreign_key :objetos, :vitimas
  end
end
