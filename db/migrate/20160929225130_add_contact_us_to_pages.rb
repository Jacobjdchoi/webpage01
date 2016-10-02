class AddContactUsToPages < ActiveRecord::Migration
  def change
    add_column :pages, :name, :string
    add_column :pages, :email, :string
    add_column :pages, :cell, :integer
    add_column :pages, :purpose, :string
    add_column :pages, :industry, :string
    add_column :pages, :body, :text
  end
end
