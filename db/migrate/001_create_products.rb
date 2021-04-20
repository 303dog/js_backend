class CreateProducts < ActiveRecord::Migration[6.0]
    def change
      create_table :products do |t|
        t.string :size
        t.text :product_id
        t.string :about
        t.integer :price
        t.string :other_product_details
  
        t.timestamps
      end
    end
  end