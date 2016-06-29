json.array!(@laclasses) do |laclass|
  json.extract! laclass, :id, :name
  json.url laclass_url(laclass, format: :json)
end
