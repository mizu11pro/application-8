class BooklistsController < ApplicationController

  def new
   @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to booklist_path(book.id)
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to booklist_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to booklists_path, notice: '投稿されました'
  end

  private
  def book_params
    params.permit(:title, :body)
  end
end
