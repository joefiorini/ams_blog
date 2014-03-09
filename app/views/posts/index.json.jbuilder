json.array!(@posts) do |post|
  json.extract! post, :id, :index
  json.url post_url(post, format: :json)
end
