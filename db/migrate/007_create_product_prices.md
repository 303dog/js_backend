class CreateProductPrices < ActiveRecord::Migration[6.0]
    def change
      create_table :product_prices do |t|
        t.integer :price
        t.integer :product_id
  
        t.timestamps
      end
    end
  end