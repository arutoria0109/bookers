class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    redirect_to book_path(@book.id)
    else
    @books = Book.all
    render :index
    end
  end

  def show
    @books = Book.all
    @book = Book.find(params[:id])
  end

  def edit
  end

  def top
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
