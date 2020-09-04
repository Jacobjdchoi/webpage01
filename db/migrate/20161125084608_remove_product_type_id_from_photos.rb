class RemoveProductTypeIdFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :product_type_id, :integer
  end
end
