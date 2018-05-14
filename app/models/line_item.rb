class LineItem < ApplicationRecord
  validates :price, numericality: { greater_than_or_equal_to:0.01 }
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart
  def total_price
    product.price * quantity
  end
end
