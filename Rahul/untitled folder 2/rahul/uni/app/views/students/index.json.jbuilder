json.array!(@students) do |student|
  json.extract! student, :id, :sname, :classs, :age, :city
  json.url student_url(student, format: :json)
end
