json.array!(@temp_addresses) do |temp_address|
  json.extract! temp_address, :id, :village, :district, :pincode, :student_id
  json.url temp_address_url(temp_address, format: :json)
end
