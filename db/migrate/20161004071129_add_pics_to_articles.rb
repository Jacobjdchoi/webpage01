class AddPicsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :pics, :string
  end
end
