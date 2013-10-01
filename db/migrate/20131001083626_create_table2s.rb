class CreateTable2s < ActiveRecord::Migration
  def change
    create_table :table2s do |t|
      t.string :name
      t.string :address
      t.string :age
      t.string :vacation

      t.timestamps
    end
  end
end
