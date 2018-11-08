class CreateInternalNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :internal_notes do |t|
      t.references :ticket
      t.text :note
      t.timestamps
    end
  end
end
