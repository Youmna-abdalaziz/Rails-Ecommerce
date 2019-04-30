class RemovePriceFromCoupons < ActiveRecord::Migration[5.2]
  def change
    remove_column :coupons, :price, :integer
  end
end
