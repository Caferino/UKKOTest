# app/models/book.rb
class Book < ApplicationRecord
    has_many :stocks
    has_many :stores, through: :stocks
end