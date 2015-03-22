json.array!(@images) do |image|
  json.extract! image, :id, :nome, :file
  json.url image_url(image, format: :json)
end
