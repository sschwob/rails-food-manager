class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products
  has_one :delivery_route

  validates :payment_method, presence: true, inclusion: { in: ["CB", "Espèce"], message: "%{value} is not a valid payement" }
  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0.00 }

end
