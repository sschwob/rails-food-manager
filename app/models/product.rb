class Product < ApplicationRecord
  has_one_attached :photo
  
  validates :name, :category, presence: true
  validates :price, :price_in_menu, presence: true, numericality: { greater_than_or_equal_to: 0.0 }
end
