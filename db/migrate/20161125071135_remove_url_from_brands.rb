class RemoveUrlFromBrands < ActiveRecord::Migration
  def change
    remove_column :brands, :url, :string
  end
end
