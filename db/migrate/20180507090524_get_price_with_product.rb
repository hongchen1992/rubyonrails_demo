class GetPriceWithProduct < ActiveRecord::Migration[5.1]
  def up
    LineItem.all.each do |aLineItem|
      aLineItem.price = aLineItem.product.price
    end
  end
end
