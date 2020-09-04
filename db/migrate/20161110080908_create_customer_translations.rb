class CreateCustomerTranslations < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up do
        Customer.create_translation_table!({
          name: :string
        }, {
          migrate_data: true
        })
      end

      dir.down do
        Customer.drop_translation_table! migrate_data: true
      end
    end
  end
end
