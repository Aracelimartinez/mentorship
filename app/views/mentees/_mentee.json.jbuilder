json.extract! mentee, :id, :name, :bio, :email, :created_at, :updated_at
json.url mentee_url(mentee, format: :json)
