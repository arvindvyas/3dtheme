json.array!(@mythemes) do |mytheme|
  json.extract! mytheme, :id, :name
  json.url mytheme_url(mytheme, format: :json)
end
