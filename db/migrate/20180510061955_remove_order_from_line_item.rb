class RemoveOrderFromLineItem < ActiveRecord::Migration[5.1]
  def change
    remove_column :line_items, :order, :reference
  end
end
