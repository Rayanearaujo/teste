class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.references :tipo, index: true
      t.references :local, index: true
      t.date :data
      t.timestamp :hora
      t.string :descricao
      t.float :valorestimado

      t.timestamps null: false
    end
    add_foreign_key :crimes, :tipos
    add_foreign_key :crimes, :locais
  end
end
