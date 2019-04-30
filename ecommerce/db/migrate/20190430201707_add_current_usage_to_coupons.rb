class AddCurrentUsageToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :current_usage, :integer
  end
end
