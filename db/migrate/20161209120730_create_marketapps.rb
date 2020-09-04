class CreateMarketapps < ActiveRecord::Migration[5.0]
  def change
    create_table :marketapps do |t|
      t.string :name
      t.integer :market_id

      t.timestamps
    end
  end
end
