class AddAssociationIdsToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :product_id, :integer
    add_column :photos, :customer_id, :integer
    add_column :photos, :brand_id, :integer
  end
end
