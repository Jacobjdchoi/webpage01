class CreateSubproducts < ActiveRecord::Migration
  def change
    create_table :subproducts do |t|
      t.string :name
      t.string :url
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
