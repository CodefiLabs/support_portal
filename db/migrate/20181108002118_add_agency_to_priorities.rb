class AddAgencyToPriorities < ActiveRecord::Migration[5.2]
  def change
    rename_table :priorties, :priorities
    add_reference :priorities, :agency, foreign_key: true
  end
end
