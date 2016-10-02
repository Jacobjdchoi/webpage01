class AddInfoToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :industry_name, :string
  end
end
