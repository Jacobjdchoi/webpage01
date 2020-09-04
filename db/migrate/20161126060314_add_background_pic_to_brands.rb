class AddBackgroundPicToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :background_pic, :string
  end
end
