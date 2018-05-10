class RemovePriceFromLineItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :line_items, :price, :string
  end
end
