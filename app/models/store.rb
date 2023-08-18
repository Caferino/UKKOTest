# app/models/bookstore.rb
class Store < ApplicationRecord
    has_many :stocks
    has_many :books, through: :stocks
end
