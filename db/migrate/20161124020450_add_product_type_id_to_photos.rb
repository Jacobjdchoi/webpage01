class AddProductTypeIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :product_type_id, :integer
  end
end
