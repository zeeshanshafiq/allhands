json.array!(@events) do |event|
  json.extract! event, :id, :description, :date, :summary
  json.url event_url(event, format: :json)
end
