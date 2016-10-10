class CreateJoinTableProductTypeBrand < ActiveRecord::Migration
  def change
    create_join_table :product_types, :brands do |t|
      t.index [:product_type_id, :brand_id]
      t.index [:brand_id, :product_type_id]
    end
  end
end
