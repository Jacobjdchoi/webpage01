class AddImagesIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :images_id, :integer
  end
end
