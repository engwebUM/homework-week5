json.array!(@articles) do |article|
  json.extract! article, :id, :title, :time, :author, :body, :author_info, :author_img_link
  json.url article_url(article, format: :json)
end
