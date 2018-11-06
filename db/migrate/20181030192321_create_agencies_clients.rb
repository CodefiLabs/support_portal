class CreateAgenciesClients < ActiveRecord::Migration[5.2]
  def change
    create_table :agencies_clients do |t|
      t.references :agencies, foreign_key: true
      t.references :clients, foreign_key: true

      t.timestamps
    end
  end
end
