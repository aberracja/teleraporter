json.array!(@teleevents) do |teleevent|
  json.extract! teleevent, :id, :date, :title, :phone, :description
  json.url teleevent_url(teleevent, format: :json)
end
