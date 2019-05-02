class RemoveStoreIdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :store_id, :integer
  end
end
