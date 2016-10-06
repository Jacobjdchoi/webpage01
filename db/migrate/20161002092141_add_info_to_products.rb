class AddInfoToProducts < ActiveRecord::Migration
  def change
    add_column :products, :series_name, :string
    add_column :products, :product_type, :string
  end
end
