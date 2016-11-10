class AddSummaryToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :summary, :text
  end
end
