json.books do
  json.array! @books do |book|
    json.id book.id
    json.title book.title
    json.description book.description
    json.published_at book.published_at
    json.authors do
      json.array! book.authors do |author|
        json.id author.id
        json.first_name author.first_name
        json.last_name author.last_name
        json.books do
          json.array! author.books do |book|
            json.id book.id
            json.title book.title
            json.description book.description
            json.published_at book.published_at
            json.authors nil
            json.genre nil
          end
        end
      end
    end
    json.genre do
      json.title book.genre.title
      json.id book.genre.id
      json.description book.genre.description
      json.books do
        json.array! book.genre.books do |book|
          json.id book.id
          json.title book.title
          json.description book.description
          json.published_at book.published_at
          json.authors nil
          json.genre nil
        end
      end
    end
  end
end
