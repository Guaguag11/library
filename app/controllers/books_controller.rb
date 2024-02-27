class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
    
    def index
        @books = Book.all
    end
    
    def show
    end
    
    def new
        @book = Book.new
    end
    
    def create
        @book = Book.new(book_params)
        if @book.save
            redirect_to @book
        else 
            render :new
        end
    end
    
    def edit
    end
    
    def update
        if @book.update(book_params)
            redirect_to "/books"
        else
            render :edit
        end
    end
    
    def destroy
        @book.destroy
        redirect_to "/books"
    end
    
    private
    def book_params
        params.require(:book).permit(:title, :author, :year, :url, :sinopsis, :genre, :store_id, :user_id, :quantity)
    end 
    
    def set_book 
        @book = Book.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
    end
end