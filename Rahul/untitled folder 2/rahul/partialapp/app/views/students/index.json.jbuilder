json.array!(@students) do |student|
  json.extract! student, :id, :sname, :age, :class, :city
  json.url student_url(student, format: :json)
end
