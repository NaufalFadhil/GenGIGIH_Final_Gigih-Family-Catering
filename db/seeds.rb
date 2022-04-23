admin = Admin.create(username: "admin", password: "admin")

customer = Customer.create([
  {name: "Naufal Fadhil", phone: "+628123456789", address: "Jakarta", email: "naufalfadhil@gigih.com"},
  {name: "Savira vira", phone: "+628123456788", address: "Bekasi", email: "savira@gojek.com"}
])

menu = Menu.create([
  {name: "Fried rice", price: 25000.0, description: "Fried rice is food in the form of fried rice and stirred in cooking oil, margarine, or butter."},
  {name: "Uduk rice", price: 12000.0, description: "Nasi uduk is a dish made from steamed steamed white rice with coconut milk and seasoned with nutmeg, cinnamon, ginger, lemon grass and pepper."},
  {name: "Fried chicken", price: 15000.0, description: "Fried chicken is an Indonesian dish which is chicken fried in cooking oil."},
  {name: "Orange juice", price: 10000.0, description: "Citrus juice is fruit juice obtained by squeezing or pressing the contents of citrus fruits."},
  {name: "Milk", price: 8000.0, description: "Milk is a white, nutritious liquid produced by the mammary glands of mammals, including humans."}
])

category = Category.create([
  {name: "Food"},
  {name: "Beverage"},
  {name: "Carnivora"},
  {name: "Herbivora"},
  {name: "Juice"}
])

menuCategory = MenuCategory.create([
  {menu_id: 1, category_id: 2},
  {menu_id: 1, category_id: 4},
  {menu_id: 2, category_id: 2},
  {menu_id: 2, category_id: 4},
  {menu_id: 3, category_id: 2},
  {menu_id: 3, category_id: 3},
  {menu_id: 4, category_id: 2},
  {menu_id: 4, category_id: 5},
  {menu_id: 5, category_id: 2}
])

order = Order.create([
  {customer_id: 1, total: 28000.0, status: "NEW", admin_id: 1, order_date: "Sat, 23 Apr 2022 05:32:00.000000000 UTC +00:00"},
  {customer_id: 2, total: 20000.0, status: "NEW", admin_id: 1, order_date: "Sat, 23 Apr 2022 05:35:00.000000000 UTC +00:00"},
  {customer_id: 1, total: 18000.0, status: "NEW", admin_id: 1, order_date: "Sat, 23 Apr 2022 05:37:00.000000000 UTC +00:00"}
])

orderDetail = OrderDetail.create([
  {order_id: 1, menu_id: 1, quantity: 1},
  {order_id: 1, menu_id: 2, quantity: 2},
  {order_id: 2, menu_id: 1, quantity: 1},
  {order_id: 2, menu_id: 4, quantity: 5},
])
