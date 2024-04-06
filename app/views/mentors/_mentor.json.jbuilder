# frozen_string_literal: true

json.extract! mentor, :id, :name, :email, :url, :bio, :created_at, :updated_at
json.url mentor_url(mentor, format: :json)
