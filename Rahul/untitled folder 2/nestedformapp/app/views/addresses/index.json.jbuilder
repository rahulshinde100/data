json.array!(@addresses) do |address|
  json.extract! address, :id, :village, :district, :pincode, :student_id
  json.url address_url(address, format: :json)
end
