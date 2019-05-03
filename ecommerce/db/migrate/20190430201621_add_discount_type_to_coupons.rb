class AddDiscountTypeToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :discount_Type, :string
  end
end
