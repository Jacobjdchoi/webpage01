class RemovePicsFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :pics, :string
  end
end
