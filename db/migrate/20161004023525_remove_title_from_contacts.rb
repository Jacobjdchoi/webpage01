class RemoveTitleFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :title, :string
    remove_column :contacts, :topic, :string
  end
end
