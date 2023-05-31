class AddTotalPriceToRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :rentals, :total_price, :float
  end
end
