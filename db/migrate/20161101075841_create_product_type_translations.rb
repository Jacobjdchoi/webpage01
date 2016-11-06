class CreateProductTypeTranslations < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        ProductType.create_translation_table!({
          name: :string
        }, {
          migrate_data: true
        })
      end

      dir.down do
        ProductType.drop_translation_table! migrate_data: true
      end
    end
  end
end
