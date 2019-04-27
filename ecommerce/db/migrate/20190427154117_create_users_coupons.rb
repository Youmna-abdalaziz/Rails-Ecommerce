class CreateUsersCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :users_coupons , :id=>false do |t|
      t.integer "user_id"
      t.integer "coupon_id"
    end
  end
end
