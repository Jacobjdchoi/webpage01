class CreateBrandTranslations < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        Brand.create_translation_table!({
          summary: :text
        }, {
          migrate_data: true
        })
      end

      dir.down do
        Brand.drop_translation_table! migrate_data: true
      end
    end
  end
end
