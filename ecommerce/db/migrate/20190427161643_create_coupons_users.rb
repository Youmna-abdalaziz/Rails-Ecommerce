class CreateCouponsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons_users , :id=>false  do |t|
      t.integer "user_id"
      t.integer "coupon_id"
    end
  end
end
