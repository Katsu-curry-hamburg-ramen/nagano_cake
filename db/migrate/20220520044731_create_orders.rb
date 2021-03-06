class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :postage, null: false, default: 800
      t.integer :status, null: false
      t.integer :payment_method, null: false
      t.integer :total_payment, null: false
      t.string :name, null: false
      t.string :postcode, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
