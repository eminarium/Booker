json.extract! book, :id, :title, :description, :rating, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
