json.array!(@subjects) do |subject|
  json.extract! subject, :id, :all_subjects, :student_id
  json.url subject_url(subject, format: :json)
end
