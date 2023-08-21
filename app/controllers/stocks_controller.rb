class StocksController < ApplicationController

    def assign_stock
        book = Book.find(params[:book_id])
        store = Store.find(params[:store_id])
        quantity = params[:quantity].to_i

        # Find or create the stock entry and update the quantity
        stock = Stock.find_or_initialize_by(book: book, store: store)
        stock.quantity ||= 0  # Initialize to 0 if stock.quantity is nil
        stock.quantity += quantity
        stock.save
    end
    
end