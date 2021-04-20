class CreateAddresses < ActiveRecord::Migration[6.0]
    def change
      create_table :addresses do |t|
        t.string :line_1
        t.string :line_2
        t.string :line_3
        t.string :city
        t.integer :zip_code
        t.string :state
        t.string :country
        t.string :other_address_details
  
        t.timestamps
      end
    end
  end