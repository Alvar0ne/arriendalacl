class AddProvCodeToComunas < ActiveRecord::Migration
  def change
    add_column :comunas, :code, :string
    add_column :comunas, :provincia, :string
  end
end
