class BooksController < ApplicationController

	def index
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		@book.user_id = current.user_id
		@book.save
		redirect_to book_path(params[:id])
	end

	def show
		@book = Book.find(params[:id])
		@user = User.find(params[:id])
	end

	def update
	end

	def destroy
	end

	private
	def book_params
		params.require(:book).permit(:title, :body, :user_id)
	end
end
