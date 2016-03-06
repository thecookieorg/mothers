json.array!(@questions) do |question|
  json.extract! question, :id, :question_1, :question_2, :question_3
  json.url question_url(question, format: :json)
end
