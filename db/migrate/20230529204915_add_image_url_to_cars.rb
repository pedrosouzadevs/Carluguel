class AddImageUrlToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :image_url, :text
  end
end
