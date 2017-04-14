class CreateComunas < ActiveRecord::Migration
  def change
    create_table :comunas do |t|
      t.string :nombre
      t.references :region, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
