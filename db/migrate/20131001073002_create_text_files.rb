class CreateTextFiles < ActiveRecord::Migration
  def change
    create_table :text_files do |t|
      t.string :name
      t.text :text
      t.timestamp :date

      t.timestamps
    end
  end
end
