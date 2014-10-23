class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy]
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
  end
  
  def edit
  end
  
  def create
    @book = Book.new book_params
    if @book.save
      redirect_to books_path
    else
      render 'new'
    end
  end
  
  def update
  end
  
  def show
  end
  
  def delete
  end
  
  private
  
  def book_params
    params.require(:book).permit!
  end
  
  def find_book
    @book = Book.find params[:id]
  end
end
