json.array!(@events) do |event|
  json.extract! event, :id, :description, :title, :rsvp_link, :time_at, :event_type_id
  json.url event_url(event, format: :json)
end
