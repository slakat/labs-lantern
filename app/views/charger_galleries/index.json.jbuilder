json.array!(@charger_galleries) do |charger_gallery|
  json.extract! charger_gallery, :id, :charger_id, :image
  json.url charger_gallery_url(charger_gallery, format: :json)
end
