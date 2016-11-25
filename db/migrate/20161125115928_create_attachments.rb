class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :path
      t.integer :file_id
      t.string :file_type
      t.timestamps null: false
    end
  end
end
