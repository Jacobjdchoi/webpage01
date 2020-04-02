class RemoveCustomerIdFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :customer_id, :integer
  end
end
