class AddHistoriesTranslations < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        History.create_translation_table!({
          title: :string
        }, {
          migrate_data: true
        })
      end

      dir.down do
        History.drop_translation_table! migrate_data: true
      end
    end
  end
end
