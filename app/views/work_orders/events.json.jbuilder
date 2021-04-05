json.array!(@events) do |event|	
  json.id event.id
  json.start event.planned_date_and_time
  json.end event.complete_date_and_time
  json.title event.description_of_issue
  if event.recurring?
  	json.daysOfWeek Array(event.planned_date_and_time.strftime("%u"))
  end
end