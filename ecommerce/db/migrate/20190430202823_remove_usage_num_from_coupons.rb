class RemoveUsageNumFromCoupons < ActiveRecord::Migration[5.2]
  def change
    remove_column :coupons, :usagenum, :integer
  end
end
