class CreateVitimas < ActiveRecord::Migration
  def change
    create_table :vitimas do |t|
      t.string :sexo
      t.integer :idade
      t.string :email
      t.string :senha

      t.timestamps null: false
    end
  end
end
