class AddDiscountValueToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :discount_value, :integer
  end
end
