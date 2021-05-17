class BooksController < ApplicationController

  # GET /books
  def index
    @books = Book.all.includes(authors: :books, genre: :books).sample(3)
    respond_to do |format|
      case ENV["JSON_BACKEND"]&.downcase
      when "alba"
        format.json do
          render json: BookResource.new(@books, within: {books: {authors: :books, genre: :books}}).serialize
        end
      when "jb"
        format.json do
          render 'books/index.json.jb'
        end
      when "jbuilder"
        format.json do
          render 'books/index.json.jbuilder'
        end
      else
        raise 'Alba, jb or jbuilder!'
      end
    end
  end
end
