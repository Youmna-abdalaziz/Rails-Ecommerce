class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.datetime :expireddate
<<<<<<< HEAD
      t.integer :price
=======
      t.integer :Dprice
>>>>>>> b454299090e1a691efeba3ab241a528addda3fb3
      t.integer :precentage
      t.integer :usagenum

      t.timestamps
    end
  end
end
