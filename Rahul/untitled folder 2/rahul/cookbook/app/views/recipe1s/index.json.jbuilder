json.array!(@recipe1s) do |recipe1|
  json.extract! recipe1, :id, :title, :instruction
  json.url recipe1_url(recipe1, format: :json)
end
