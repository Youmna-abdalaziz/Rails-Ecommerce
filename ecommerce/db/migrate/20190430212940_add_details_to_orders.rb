class AddDetailsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :phone, :string, null:true
    add_column :orders, :credit_cart, :string, null:true 
  end
end
