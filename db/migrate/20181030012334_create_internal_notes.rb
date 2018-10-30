class CreateInternalNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :internal_notes do |t|
      t.integer :commentor_id
      t.integer :ticket_id
      t.text :note
      t.timestamps
    end
  end
end
