json.array!(@wanted_items) do |wanted_item|
  json.extract! wanted_item, :id
  json.url wanted_item_url(wanted_item, format: :json)
end
