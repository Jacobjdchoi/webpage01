class AddLocationToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :location, :string
  end
end
