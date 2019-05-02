# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create(email: "faten@yahoo.com",password: '123456',name:"faten",is_seller: true)
User.create(email: "soha@yahoo.com",password: '123456',name:"soha",is_seller: true)
User.create(email: "ali@yahoo.com",password: '123456',name:"ali")
User.create(email: "ahmed@yahoo.com",password: '123456',name:"ahmed")

Brand.create(name: "Samsung")
Brand.create(name: "htc")
Brand.create(name: "Apple")
Brand.create(name: "HP")
Brand.create(name: "Microsoft")
Brand.create(name: "Adidas")
Brand.create(name: "ZARA")
Brand.create(name: "H&M")
Brand.create(name: "Intel")
Brand.create(name: "MAC")
Category.create(name: "Electronics")
Category.create(name: "Sports")
Category.create(name: "Toys")
Category.create(name: "Technology")
Category.create(name: "Clothes")
Category.create(name: "Luxury")
Category.create(name: "Makeup")
Category.create(name: "Media")
Category.create(name: "Apparel")
Category.create(name: "Books")


# Store.create(name:"first store",summary:"We recommend Monty Python and the Holy Grail for some light-humoured dummy text.")
# Store.create(name:"Second Store",summary:"Get ready for plenty of religious references that fail to make sense – Monty Python fans know what we mean")

# Product.create(title:"Projector",image:"",price:1000,quantity_in_stock:100,description:"ready for plenty of religious references",category_id:2, brand_id:2,user_id:1)  
# Product.create(title:"Routers",image:"",price:800,quantity_in_stock:60,description:"ready for plenty of religious references",category_id:3, brand_id:5,user_id:2)  
# Product.create(title:"Printer",image:"",price:1000,quantity_in_stock:100,description:"ready for plenty of religious references",category_id:4, brand_id:3,user_id:1)  