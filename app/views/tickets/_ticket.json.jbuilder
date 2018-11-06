json.extract! ticket, :id, :id, :integer, :created_at, :update_at, :client_id, :reference, :project_id, :reference, :created_by, :reference, :internal_status, :external_status, :uploads, :title, :start_time, :datetime, :end_time, :total_time, :adjusted_time, :priority_id, :is_deleted, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
