json.array!(@polls) do |poll|
  json.extract! poll, :id, :topic, :category
  json.url poll_url(poll, format: :json)
end
