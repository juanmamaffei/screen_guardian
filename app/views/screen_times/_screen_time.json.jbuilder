json.extract! screen_time, :id, :duration, :screen_type, :app_name, :created_at, :updated_at
json.url screen_time_url(screen_time, format: :json)
