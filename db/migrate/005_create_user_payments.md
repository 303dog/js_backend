class CreateUserPayments < ActiveRecord::Migration[6.0]
    def change
      create_table :user_payments do |t|
       t.integer :user_id
       t.text :payment_method_code
       t.integer :card_number
       t.date :date_from
       t.date :date_to
       t.string :other_user_payment_details
  
        t.timestamps
      end
    end
  end
