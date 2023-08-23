cat1 = Category.create(name: "Men")
cat2 = Category.create(name: "Women")
cat3 = Category.create(name: "Shirt", parent_id:1)
cat4 = Category.create(name: "Hijab", parent_id:2)

p1= Product.create(category_id:3, description:"abcd abcd", price:100, name:"Shirt 1")
p2= Product.create(category_id:4, description:"abcd abcd", price:200, name:"Hijab 1")

v1= Varient.create(product_id:1, color:"Red", size:"Small", sku:"aaaaaa")
v2= Varient.create(product_id:2, color:"Black", size:"Small", sku:"bbbbbb")
 
u1=User.create(name: "manon", email: 'manon@gmail.com', password: '12')
u2=User.create(name: "manon1", email: 'manon@gmail1.com', password: '12')
u3=User.create(name: "cccc", email: 'manoffn@gmail1.com', password: '12')

u4=User.create(name: "ddddd", email: 'manonds@gmail1.com', password: '12')


a1=BillingAddress.create(user_id: 1,upazilla:"rani",postcode:"a32",address_line:"asjnjs")
a2=BillingAddress.create(user_id: 2,upazilla:"rani",postcode:"a32",address_line:"asjnjs")

a3=ShippingAddress.create(user_id: 3,upazilla:"rani",postcode:"a32",address_line:"asjnjs")
a4=ShippingAddress.create(user_id: 4,upazilla:"rani",postcode:"a32",address_line:"asjnjs")