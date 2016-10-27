class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :pics
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
