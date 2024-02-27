class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :year, presence: true
    validates :sinopsis, presence: true
    validates :genre, presence: true
    validates :quantity, presence: true
    belongs_to :user, inverse_of: :books, optional: true
    belongs_to :store, inverse_of: :books
end

