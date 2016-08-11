json.array!(@designs) do |design|
  json.extract! design, :id, :name, :json, :updated_by
  json.url design_url(design, format: :json)
end
