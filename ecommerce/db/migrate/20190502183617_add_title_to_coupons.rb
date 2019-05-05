class AddTitleToCoupons < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :title, :string
  end
end
