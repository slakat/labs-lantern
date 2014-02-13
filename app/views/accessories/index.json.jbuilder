json.array!(@accessories) do |accessory|
  json.extract! accessory, :id, :name, :price, :description, :features, :compatible
  json.url accessory_url(accessory, format: :json)
end
