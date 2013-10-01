class CreateTable3s < ActiveRecord::Migration
  def change
    create_table :table3s do |t|
      t.string :name
      t.datetime :date
      t.integer :timesince
      t.boolean :private

      t.timestamps
    end
  end
end
