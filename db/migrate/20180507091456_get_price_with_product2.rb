class GetPriceWithProduct2 < ActiveRecord::Migration[5.1]
  def up
    LineItem.all.each do |aLineItem|
      aLineItem.price = aLineItem.product.price
      aLineItem.save!
    end
  end
end
