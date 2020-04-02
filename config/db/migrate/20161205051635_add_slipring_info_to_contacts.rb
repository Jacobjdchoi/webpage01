class AddSlipringInfoToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :amp, :string
    add_column :contacts, :ckts, :string
    add_column :contacts, :bore, :boolean
    add_column :contacts, :ethernet, :string
    add_column :contacts, :rpm, :string
  end
end
