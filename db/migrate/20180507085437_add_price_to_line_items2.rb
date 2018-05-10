class AddPriceToLineItems2 < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :price, :decimal
    LineItem.all.each do |aLineItem|
      aLineItem.price = aLineItem.product.price
    end
  end
end
