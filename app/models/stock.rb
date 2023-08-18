# app/models/stock.rb
class Stock < ApplicationRecord
  belongs_to :book
  belongs_to :store
end 
