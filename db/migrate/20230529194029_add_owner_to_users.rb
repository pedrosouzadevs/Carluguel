class AddOwnerToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :owner, :boolean, default: false
  end
end
