class AddNotecollectionToNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :notecollection, index: true
  end
end
