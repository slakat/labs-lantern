json.array!(@chargers) do |charger|
  json.extract! charger, :id, :name, :price, :description, :features
  json.url charger_url(charger, format: :json)
end
