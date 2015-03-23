json.array!(@articles) do |article|
  json.extract! article, :id, :title, :post, :date, :author_id, :icon_id
  json.url article_url(article, format: :json)
end
