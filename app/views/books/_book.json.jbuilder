json.extract! book, :id, :title, :author, :body, :color, :width, :height, :spine_image, :main_image, :created_at, :updated_at
json.url book_url(book, format: :json)
