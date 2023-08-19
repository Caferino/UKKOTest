class StocksController < ApplicationController

    def assign_stock
        book = Book.find(params[:book_id])
        store = Store.find(params[:store_id])
        quantity = params[:quantity].to_i

        stock = Stock.find_or_initialize_by(book: book, store: store)
        stock.quantity += quantity
        stock.save

        redirect_to stocks_path
    end
    
end