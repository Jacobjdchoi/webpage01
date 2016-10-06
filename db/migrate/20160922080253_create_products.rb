class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer  :brand_id
      t.timestamps null: false
    end
    add_index :products, :brand_id
  end
end
