class AddColumnStateToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :state, :string, default: "in_draft"
  end
end
