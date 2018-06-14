class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :title
      t.date :event_date

      t.timestamps
    end
  end
end
