class RemoveDPriceFromCoupons < ActiveRecord::Migration[5.2]
  def change
    remove_column :coupons, :Dprice, :integer
  end
end
