class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity ,:default=>1
      t.decimal :unit_price
      t.string :status,:default=>"pending"

      t.timestamps
    end
  end
end
