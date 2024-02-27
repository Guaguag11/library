class Store < ApplicationRecord
    validates :codename, presence: true
    validates :adress, presence: true
    validates :phone, presence: true
    has_many :books, inverse_of: :store
end

