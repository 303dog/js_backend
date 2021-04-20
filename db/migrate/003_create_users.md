class CreateUsers < ActiveRecord::Migration[6.0]
    def change
      create_table :users do |t|
        t.string :first_name
        t.string :last_name
        t.string :user_email
        t.string :user_phone
        t.string :user_other
  
        t.timestamps
      end
    end
  end