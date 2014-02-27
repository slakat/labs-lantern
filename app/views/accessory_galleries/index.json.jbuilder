json.array!(@accessory_galleries) do |accessory_gallery|
  json.extract! accessory_gallery, :id, :accessory_id, :image
  json.url accessory_gallery_url(accessory_gallery, format: :json)
end
