class AddContactNumberToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :contact_number, :string
  end
end
