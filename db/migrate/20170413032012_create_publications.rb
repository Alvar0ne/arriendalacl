class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :titulo
      t.integer :precio
      t.string :clasificacion
      t.string :tipo
      t.integer :superficie
      t.integer :dormitorio
      t.integer :baño
      t.integer :estacionamiento
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
