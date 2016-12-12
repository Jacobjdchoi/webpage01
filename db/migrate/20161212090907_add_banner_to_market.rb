class AddBannerToMarket < ActiveRecord::Migration[5.0]
  def change
    add_column :markets, :banner, :string
  end
end
