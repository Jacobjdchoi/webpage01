class CreateJoinTableMarketProduct < ActiveRecord::Migration
  def change
    create_join_table :markets, :products do |t|
      t.index [:market_id, :product_id]
      t.index [:product_id, :market_id]
    end
  end
end
