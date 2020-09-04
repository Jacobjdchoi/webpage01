class AddImagesTypeToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :images_type, :string
  end
end
