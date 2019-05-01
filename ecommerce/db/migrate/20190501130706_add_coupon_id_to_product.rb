class AddCouponIdToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :coupon_id, :integer
  end
end
