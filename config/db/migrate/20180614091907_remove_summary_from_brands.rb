class RemoveSummaryFromBrands < ActiveRecord::Migration[5.0]
  def change
    remove_column :brands, :summary, :string
  end
end
