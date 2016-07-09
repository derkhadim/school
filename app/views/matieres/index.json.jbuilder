json.array!(@matieres) do |matiere|
  json.extract! matiere, :id, :maths, :pc, :svt, :anglais, :student_id
  json.url matiere_url(matiere, format: :json)
end
