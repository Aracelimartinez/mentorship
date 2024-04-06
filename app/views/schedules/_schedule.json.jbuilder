json.extract! schedule, :id, :mentor_id, :mentee_id, :date, :description, :accepted, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
