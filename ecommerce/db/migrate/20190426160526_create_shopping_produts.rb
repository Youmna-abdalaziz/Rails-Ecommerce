class CreateShoppingProduts < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_produts do |t|
      t.references :shopping_cart, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity, :default => 1

      t.timestamps
    end
  end
end
