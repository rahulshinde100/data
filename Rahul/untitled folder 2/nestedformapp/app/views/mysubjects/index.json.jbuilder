json.array!(@mysubjects) do |mysubject|
  json.extract! mysubject, :id, :my_subjects
  json.url mysubject_url(mysubject, format: :json)
end
