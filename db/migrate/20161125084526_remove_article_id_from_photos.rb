class RemoveArticleIdFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :article_id, :integer
  end
end
