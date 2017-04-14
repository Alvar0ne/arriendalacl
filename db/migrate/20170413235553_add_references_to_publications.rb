class AddReferencesToPublications < ActiveRecord::Migration
  def change
    add_reference :publications, :user, index: true, foreign_key: true
    add_reference :publications, :comuna, index: true, foreign_key: true
    add_reference :publications, :region, index: true, foreign_key: true
  end
end
