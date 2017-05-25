class AddNombreFonoToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :nombre, :string
    add_column :publications, :fono, :integer
  end
end
