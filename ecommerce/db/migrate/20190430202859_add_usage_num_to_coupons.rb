class AddUsageNumToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :usage_num, :integer
  end
end
