class CreateUserAddresses < ActiveRecord::Migration[6.0]
    def change
      create_table :user_addresses do |t|
        t.integer :user_id
        t.integer :user_address_id
        t.integer :date_from
        t.string :other_useraddress_details
  
        t.timestamps
      end
    end
  end