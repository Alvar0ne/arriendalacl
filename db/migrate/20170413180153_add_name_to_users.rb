class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :fono, :integer
    add_column :users, :permission_level , :integer , default: 1
  end
end
