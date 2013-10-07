class CreateNotecollections < ActiveRecord::Migration
  def change
    create_table :notecollections do |t|
      t.string :title
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
