class RemovePicsFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :pics, :string
  end
end
