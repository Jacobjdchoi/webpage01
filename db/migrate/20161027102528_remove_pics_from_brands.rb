class RemovePicsFromBrands < ActiveRecord::Migration
  def change
    remove_column :brands, :pics, :string
  end
end
