class BooklistsController < ApplicationController

  def new
   @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to booklist_path(@book)
    else
    render("books/index")
    end
  end


  def index
    @books = Book.all
  end

  def show
    # /books/:id
    # /books/1000
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
    if book.destroy
      flash[:notice] = "Book was successfully destroyed."
    redirect_to books_path
    end
  end

  private
  def book_params
    params.permit(:title, :body)
  end
end
