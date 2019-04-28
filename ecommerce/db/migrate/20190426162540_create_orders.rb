class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.decimal :total_price
      t.decimal :actual_price
      t.string :status , :default => "pending"
      t.string :address, :null => true

      t.timestamps
    end
  end
end
