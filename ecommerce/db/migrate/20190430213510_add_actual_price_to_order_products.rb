class AddActualPriceToOrderProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :order_products, :actual_price, :string,null:true
  end
end
