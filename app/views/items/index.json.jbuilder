json.array!(@items) do |item|
  json.extract! item, :id, :name, :image, :price, :description, :category, :rating
  json.url item_url(item, format: :json)
end
