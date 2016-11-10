class AddAttachmentToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :attachment, :string
  end
end
