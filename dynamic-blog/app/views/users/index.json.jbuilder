json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname
  json.url user_url(user, format: :json)
end
