class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :id
      t.string :integer
      t.datetime :created_at
      t.datetime :update_at
      t.string :client_id
      t.string :reference
      t.string :project_id
      t.string :reference
      t.string :created_by
      t.string :reference
      t.string :internal_status
      t.string :external_status
      t.blob :uploads
      t.string :title
      t.string :start_time
      t.string :datetime
      t.datetime :end_time
      t.float :total_time
      t.float :adjusted_time
      t.reference :priority_id
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
