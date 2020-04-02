class CreateBrandProductTypes < ActiveRecord::Migration
  def change
    create_table :brand_product_types do |t|
      t.integer :brand_id
      t.integer :product_type_id
      t.index :brand_id
      t.index :product_type_id
      t.timestamps null: false
    end
  end
end
