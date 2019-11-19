json.extract! book, :id, :title, :price, :author, :publish, :time, :path, :picLocation, :created_at, :updated_at
json.url book_url(book, format: :json)
