json.array!(@events_all) do |event|
  json.start event.date
  json.url event_url(event)
  
  if current_user&.id == event.organizer.id
    json.pattern "organizer"
  elsif event.users.ids.include?(current_user&.id)
    json.pattern "participant" 
  else
    json.pattern "other"
  end
end
