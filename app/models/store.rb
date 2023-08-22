# app/models/bookstore.rb
class Store < ApplicationRecord
    has_many :stocks
    has_many :books, through: :stocks

    def self.ransackable_associations(auth_object = nil)
        ["books", "stocks"]
    end

    def self.ransackable_attributes(auth_object = nil)
        ["address", "codename", "created_at", "phone", "updated_at"]
    end
end
