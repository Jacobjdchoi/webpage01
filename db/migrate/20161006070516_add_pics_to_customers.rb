class AddPicsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :pics, :string
  end
end
