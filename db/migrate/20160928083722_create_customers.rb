class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :importance
      t.integer :wellknown
      t.timestamps null: false
    end
  end
end
