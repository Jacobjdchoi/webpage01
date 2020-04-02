class RemovePicsFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :pics, :string
  end
end
