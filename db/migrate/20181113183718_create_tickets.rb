class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    if table_exists? :tickets 
      drop_table :tickets 
    end
    create_table :tickets do |t|
      t.references :client, foreign_key: true
      t.integer :assigned_to
      t.string :internal_status
      t.string :external_status
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.float :total_time
      t.float :adjusted_time
      t.string :priority
      t.boolean :is_deleted
    end
  end
end
