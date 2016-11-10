class AddAttachmentsToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :attachments, :string
  end
end
