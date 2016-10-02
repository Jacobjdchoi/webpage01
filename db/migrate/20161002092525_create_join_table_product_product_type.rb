class CreateJoinTableProductProductType < ActiveRecord::Migration
  def change
    create_join_table :products, :product_types do |t|
      t.index [:product_id, :product_type_id]
      t.index [:product_type_id, :product_id]
    end
  end
end
