# frozen_string_literal: true

json.extract! objective, :id, :created_at, :updated_at
json.url objective_url(objective, format: :json)
