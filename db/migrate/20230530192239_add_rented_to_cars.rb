class AddRentedToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :rented, :boolean, default: false
  end
end
