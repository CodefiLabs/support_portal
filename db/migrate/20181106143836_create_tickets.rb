class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.datetime :created_at
      t.datetime :update_at
      t.references :client_id
      t.references :project_id
      t.references :created_by
      t.references :assigned_to
      t.string :internal_status
      t.string :external_status
      t.string :uploads
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.float :total_time
      t.float :adjusted_time
      t.references :priority_id
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
