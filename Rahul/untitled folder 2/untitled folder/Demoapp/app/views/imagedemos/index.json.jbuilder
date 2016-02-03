json.array!(@imagedemos) do |imagedemo|
  json.extract! imagedemo, :id, :fname, :lname
  json.url imagedemo_url(imagedemo, format: :json)
end
