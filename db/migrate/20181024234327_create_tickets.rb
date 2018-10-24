class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :internal_status
      t.string :external_status
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.float :total_time
      t.float :adjusted_time
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
