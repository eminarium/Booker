json.extract! review, :id, :review_note, :book_id, :created_at, :updated_at
json.url review_url(review, format: :json)
