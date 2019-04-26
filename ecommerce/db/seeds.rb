# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


brand1 = Brand.create(name: "Samsung")
brand2 = Brand.create(name: "htc")
brand3 = Brand.create(name: "Apple")
brand4 = Brand.create(name: "HP")
brand5 = Brand.create(name: "Microsoft")
brand6 = Brand.create(name: "Adidas")
brand7 = Brand.create(name: "ZARA")
brand8 = Brand.create(name: "H&M")
brand9 = Brand.create(name: "Intel")
brand10 = Brand.create(name: "MAC")
categ1 = Category.create(name: "Electronics")
categ2 = Category.create(name: "Sports")
categ3 = Category.create(name: "Toys")
categ4 = Category.create(name: "Technology")
categ5 = Category.create(name: "Clothes")
categ6 = Category.create(name: "Luxury")
categ7 = Category.create(name: "Makeup")
categ8 = Category.create(name: "Media")
categ9 = Category.create(name: "Apparel")
categ10 = Category.create(name: "Books")


Store.create(name:"first store",summary:"We recommend Monty Python and the Holy Grail for some light-humoured dummy text.",user_id:1)
Store.create(name:"Second Store",summary:"Get ready for plenty of religious references that fail to make sense – Monty Python fans know what we mean",user_id:1)

Product.create(title:"Projector",image:"",price:1000,quantity_in_stock:100,description:"ready for plenty of religious references",category_id:2, brand_id:2,store_id:1)  
Product.create(title:"Routers",image:"",price:800,quantity_in_stock:60,description:"ready for plenty of religious references",category_id:3, brand_id:5,store_id:2)  
Product.create(title:"Printer",image:"",price:1000,quantity_in_stock:100,description:"ready for plenty of religious references",category_id:4, brand_id:3,store_id:1)  