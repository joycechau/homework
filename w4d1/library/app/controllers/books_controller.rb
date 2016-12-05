class BooksController < ApplicationController
  def index
    @books = Book.all
    render index: @books
  end

  def new
    # your code here
  end

  def create
    Book.create!(book_params)
    redirect_to 'http://localhost:3000/books'
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to 'http://localhost:3000/books'
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
