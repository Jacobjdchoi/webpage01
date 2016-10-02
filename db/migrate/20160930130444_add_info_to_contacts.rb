class AddInfoToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :name, :string
    add_column :contacts, :email, :string
    add_column :contacts, :title, :string
    add_column :contacts, :topic, :string
    add_column :contacts, :body, :text
  end
end
