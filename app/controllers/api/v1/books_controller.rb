class Api::V1::BooksController < ApplicationController
  before_action :find_book, only: [:show, :update, :destroy]

  def index
    @books = Book.all
    render json: @books, status: 200
  end

  def show
    render json: @book, status: 200
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      render json: @book, status: 200
    else
      render json: "Something went wrong"
    end
  end

  def update
    if @book.update(book_params)
      render json: @book, status: :ok
    else
      render json: "Something went wrong"
    end
  end

  def destroy
    @book.destroy
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:id, :title, :author, :category, :pages, :progress)
  end
end
