json.array!(@contributors) do |contributor|
  json.extract! contributor, :id, :user_id, :design_id, :owner
  json.url contributor_url(contributor, format: :json)
end
