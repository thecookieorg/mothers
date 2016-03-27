json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :calendly_meeting_url
  json.url meeting_url(meeting, format: :json)
end
