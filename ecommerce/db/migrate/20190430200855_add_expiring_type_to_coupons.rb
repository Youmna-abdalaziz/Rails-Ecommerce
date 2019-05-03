class AddExpiringTypeToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :expiring_type, :string
  end
end
