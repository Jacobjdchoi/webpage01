class AddInfoToProducts < ActiveRecord::Migration
  def change
    add_column :products, :series_name, :string
  end
end
