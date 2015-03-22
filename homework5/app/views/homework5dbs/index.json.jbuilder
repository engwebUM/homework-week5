json.array!(@homework5dbs) do |homework5db|
  json.extract! homework5db, :id, :title, :text, :author, :date
  json.url homework5db_url(homework5db, format: :json)
end
