json.array!(@flashlights) do |flashlight|
  json.extract! flashlight, :id, :name, :price, :serie, :lumens, :description
  json.url flashlight_url(flashlight, format: :json)
end
