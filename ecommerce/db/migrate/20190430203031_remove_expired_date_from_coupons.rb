class RemoveExpiredDateFromCoupons < ActiveRecord::Migration[5.2]
  def change
    remove_column :coupons, :expireddate, :datetime
  end
end
