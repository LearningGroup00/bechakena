# Category.create(name: "Men", details: "Men's wear main category")
# Category.create(name: "Women", details: "Women's wear main category")
# Category.create(name: "Shirt", category_id: 1, details: "Shirt category for Men")
# Category.create(name: "Hijab", category_id: 2, details: "Hijab category for Women")
# Category.create(name: "T-shirt", category_id: 1, details: "T-shirt for men")

# Product.create(name: "Polo_shirt_1", description: "Mens wear", price: 40, category_id: 3)
# Product.create(name: "T-shirt_1", description: "Mens wear", price: 25, category_id: 3)
# Product.create(name: "Gree_44", description: "sgsdgg", price: 90, category_id: 4)
# Product.create(name: "Voo_45", description: "uhshgs", price: 120, category_id: 4)

Variant.create(color: "red", size: "Small", sku: "redsm10987", product_id: 1)
Variant.create(color: "red", size: "Midium", sku: "redmd10988", product_id: 1)
Variant.create(color: "red", size: "Large", sku: "redlg10989", product_id: 1)
Variant.create(color: "red", size: "Extra-Large", sku: "redel10990", product_id: 1)
Variant.create(color: "green", size: "Small", sku: "grsm10991", product_id: 1)
Variant.create(color: "green", size: "Midium", sku: "grmd10992", product_id: 1)
Variant.create(color: "green", size: "Large", sku: "grlg10993", product_id: 1)
Variant.create(color: "green", size: "Extra-Large", sku: "grel10994", product_id: 1)

# User.create(first_name: "Bob", last_name: "Marley", email:"bob@gmail.com", password: "1234", role: "user")