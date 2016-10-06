class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string  :name
      t.string  :email
      t.string  :company
      t.string  :pics
      t.text    :body
      t.timestamps null: false
    end
  end
end
