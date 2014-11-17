json.array!(@items) do |item|
  json.extract! item, :id, :name, :image, :price, :description, :category, :rating, :list_id
  json.url item_url(item, format: :json)
end
