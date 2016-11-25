class RemoveBrandIdFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :brand_id, :integer
  end
end
