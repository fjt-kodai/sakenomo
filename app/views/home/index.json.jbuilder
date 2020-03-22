json.array!(@events_all) do |event|
  json.start event.date
  json.url event_url(event)
end
