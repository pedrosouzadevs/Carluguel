class AddConfirmationToRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :rentals, :confirmation, :boolean, default: false
  end
end
