class RemovePrecentageFromCoupons < ActiveRecord::Migration[5.2]
  def change
    remove_column :coupons, :precentage, :integer
  end
end
