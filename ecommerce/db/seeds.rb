# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create(email: "faten@yahoo.com",password: '123456',password_confirmation:'123456', name:"faten",is_seller: true,id:7)
User.create(email: "soha@yahoo.com",password: '123456',password_confirmation:'123456', name:"soha",is_seller: true,id:8)
User.create(email: "ali@yahoo.com",password: '123456',password_confirmation:'123456',name:"ali")
User.create(email: "ahmed@yahoo.com",password: '123456',password_confirmation:'123456',name:"ahmed")

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
Store.create(name:"store1",summary:"store1",user_id:7)
Store.create(name:"store2",summary:"store2",user_id:8)
Coupon.create(id:53,expiring_type: 'Both',discount_value: 12,discount_Type: 'Fixed',current_usage: 2, usage_num: 12, expiring_date:'2019-07-06 04:00:00', title:'c1')
Coupon.create(id:54,expiring_type: 'expiring_date',discount_value: 12,discount_Type: 'Percentage',current_usage: 0,usage_num: 12, expiring_date:'2019-05-13 02:02:00',title: 'ccc')
Coupon.create(id:55,expiring_type: 'usage_num',discount_value: 10,discount_Type: 'Fixed',current_usage: 1,usage_num: 10,expiring_date: '2019-06-06 06:05:00',title: 'test')

  
# Store.create(name:"first store",summary:"We recommend Monty Python and the Holy Grail for some light-humoured dummy text.")
# Store.create(name:"Second Store",summary:"Get ready for plenty of religious references that fail to make sense – Monty Python fans know what we mean")

 product1=Product.new(title:"Projector",price:1000,quantity_in_stock:100,description:"ready for plenty of religious references",category_id:2, brand_id:2,user_id:7)  
 product1.image.attach(io: File.open("app/assets/images/projector.jpg"), filename: "projector.jpg")
 product1.save!
 product2=Product.new(title:"Routers",price:800,quantity_in_stock:60,description:"ready for plenty of religious references",category_id:3, brand_id:5,user_id:8)  
 product2.image.attach(io: File.open("app/assets/images/router.jpg"), filename: "router.jpg")
 product2.save!
 product3=Product.new(title:"Printer",price:1000,quantity_in_stock:100,description:"ready for plenty of religious references",category_id:4, brand_id:3,user_id:7)  
 product3.image.attach(io: File.open("app/assets/images/printer.jpg"), filename: "printer.jpg")
 product3.save!



#image1 = File.open("app/assets/images/myavatar.png")
#product1.image1.attach(io: image1, filename: "myavatar.png")
#image1.close
#image2 = File.open("app/assets/images/avatar_nick.png")
#product2.image2.attach(io: image2, filename: "avatar_nick.png")
#image2.close
#image3 = File.open("app/assets/images/defaultFemalePP.png")
#product3.image3.attach(io: image3, filename: "defaultFemalePP.png") 
#image3.close