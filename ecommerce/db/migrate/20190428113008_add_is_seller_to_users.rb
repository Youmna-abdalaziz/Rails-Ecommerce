class AddIsSellerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_seller, :boolean,:default => false
  end
end
