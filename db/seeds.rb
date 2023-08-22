cat1 = Category.create(name: "Men")
cat2 = Category.create(name: "Women")
cat3 = Category.create(name: "Shirt", parent_id:1)
cat4 = Category.create(name: "Hijab", parent_id:2)
cat5 = Category.create(name: "saree", parent_id:2)
cat6 = Category.create(name: "pant", parent_id:1)

p1= Product.create(category_id:3, description:"abcd abcd", price:100, name:"Shirt 1")
p2= Product.create(category_id:4, description:"abcd abcd", price:200, name:"Hijab 1")

v1= Varient.create(product_id:1, color:"Red", size:"Small", sku:"aaaaaa")
v2= Varient.create(product_id:2, color:"Black", size:"Small", sku:"bbbbbb")