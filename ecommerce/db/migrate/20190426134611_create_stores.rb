class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.text :summary
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
