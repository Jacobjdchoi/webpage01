class RemoveAttachmentsFromBrands < ActiveRecord::Migration
  def change
    remove_column :brands, :attachments, :string
  end
end
