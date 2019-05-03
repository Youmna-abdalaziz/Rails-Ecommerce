class AddExpiringDateToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :expiring_date, :datetime
  end
end
