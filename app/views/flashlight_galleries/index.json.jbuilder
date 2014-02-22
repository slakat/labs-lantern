json.array!(@flashlight_galleries) do |flashlight_gallery|
  json.extract! flashlight_gallery, :id, :flashlight_id, :image
  json.url flashlight_gallery_url(flashlight_gallery, format: :json)
end
