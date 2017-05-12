class AddMotivoToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :motivo, :integer
  end
end
