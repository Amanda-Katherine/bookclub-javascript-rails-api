class BooksController < ApplicationController
    def index
        books = Book.all
        render json: books
    end
    private

    def book_params
        params.require(:book).permit(:title, :author, :image, :description)
    end
end
