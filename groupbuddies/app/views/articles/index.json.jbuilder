json.array!(@articles) do |article|
  json.extract! article, :id, :title, :author, :date, :body, :icon
  json.url article_url(article, format: :json)
end
