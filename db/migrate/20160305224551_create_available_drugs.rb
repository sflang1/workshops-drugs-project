class CreateAvailableDrugs < ActiveRecord::Migration
  def change
    create_table :available_drugs do |t|
      t.string :name
      t.string :code
      t.integer :units, default: 0

      t.timestamps null: false
    end
  end
end
