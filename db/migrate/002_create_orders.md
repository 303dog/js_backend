class CreateOrders < ActiveRecord::Migration[6.0]
    def change
      create_table :orders do |t|
        t.integer :user_id
        t.string :user_payment_id
        t.date :date_order_paid
        t.date :date_order_placed
        t.price :total_order_price
        t.text :other_order_details
        t.integer :
  
        t.timestamps
      end
    end
  end