json.array!(@articles123s) do |articles123|
  json.extract! articles123, :id, :title, :body
  json.url articles123_url(articles123, format: :json)
end
