
#//PRODUCTS
Product.create(product_id: 01, size: "small", price: 2.49, about: "some description of this item", other_product_details: "misc random info about item")
Product.create(product_id: 02, size: "medium", price: 4.49, about: "this is medium description of stickers", other_product_details: "")
Product.create(product_id: 03, size: "large", price: 5.49, about: "this is large stickers 'about' section text.", other_product_details: "maybe something about shapes?")
Product.create(product_id: 04, size: "custom", price: 6.49, about: "This is a required field", other_product_details: "this is NOT a required field.")

#//ORDERS
#Order.create(user_id: 01 , user_payment_id: 01 , date_order_paid: 04012020 , date_order_placed: 04012020, total_order_price: 65  , #other_order_deatils: "special comments about order")
#Order.create(user_id: 02, user_payment_id: 03, date_order_paid: 01202020 , date_order_placed: 01202020, total_order_price: 100.00 , #other_order_deatils: "this is not required")
#Order.create(user_id: 03, user_payment_id: 02, date_order_paid: 02122021, date_order_placed: 02122021, total_order_price: 31.67 , #other_order_deatils: "special comments about order")

#//ADRESSESS
#Address.create(line_1: "420 S High St", line_2: "not required", line_3: "not required", city: "Boston", zip_code: 43123  , state: "CO", #country: "USA", other_address_details: "this is not required field")
#Address.create(line_1: "21 West 12th St", line_2: "", line_3: "", city: "SinCity", zip_code: 60732 , state: "NV", country: "USA", #other_address_details: "")
#Address.create(line_1: "777 N. Road St", line_2: "", line_3: "", city: "That never sleeps", zip_code: 90007 , state: "of mind", #country: "EU", other_address_details: "random test info")

#//USERS
#User.create(first_name: "Jerry", last_name: "Garcia", user_phone: 6028675309 , user_email: "dancingbears@email.com", user_other: "Dude, #check out the colors.. man" )
#User.create(first_name: "Jerry", last_name: "McGuire", user_phone: 3035554567 , user_email: "mission@statement.com", user_other: "You #had me a hello" )
#User.create(first_name: "Jerry", last_name: "Springer", user_phone: 7076660000  , user_email: "surprise@email.com", user_other: "Your #sister is here with ..." )

#// USER_ADDRESSES
#User_Address.create(user_id: 01  , user_address_id: 02 , date_from: 02232020 , other_useraddress_details: "not a required field")
#User_Address.create(user_id: 02 , user_address_id: 01 , date_from: 10312019 , other_useraddress_details: "")  
#User_Address.create(user_id: 03 , user_address_id: 03 , date_from: 09192012 , other_useraddress_details: "P.O. Box 9")

#// USER_PAYMENTS
#User_Payment.create(user_id: 01 , payment_method_code: 001, card_number: 7894 , date_from: 0720 , date_to: 1220 , #other_user_payment_details: "not required feild" )
#User_Payment.create(user_id: 02 , payment_method_code: 002, card_number: 9867 , date_from: 1220 , date_to: 0923 , #other_user_payment_details: "not sure what other fields are needed" )
#User_Payment.create(user_id: 03 , payment_method_code: 01, card_number: 5629 , date_from: 0913 , date_to: 0927 , #other_user_payment_details: "")

#//PRODUCT_PRICES
#Product_Price.create(price:  , product_id: )
#Product_Price.create(price:  , product_id: )
#Product_Price.create(price:  , product_id: )