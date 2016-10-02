class AddIndexToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :product_id, :integer
    add_index :brands, :product_id
  end
end
