# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Suppliers
supplier = Supplier.new({
  name: "ABC Records",
  email: "abc@example.com",
  phone_number: "555-2255"
})
supplier.save

supplier = Supplier.new({
  name: "Columbia Records",
  email: "columbia@example.com",
  phone_number: "555-2256"
})
supplier.save

supplier = Supplier.new({
  name: "Def Jam Records",
  email: "dj@example.com",
  phone_number: "555-2257"
})
supplier.save

#Products

product = Product.new ({
  artist: "Steely Dan",
  title: "Aja",
  price: 29.99,
  genre: "jazz",
  description: "Aja is the sixth album by the jazz rock band Steely Dan, originally released in 1977 it became the group's best-selling album. The album was placed on Rolling Stone magazine’s 500 Greatest Albums of All Time list.",
  quantity: 500,
  supplier_id: 1
})
product.save

product = Product.new ({
  artist: "Beyonce",
  title: "4",
  price: 32.99,
  genre: "R&B",
  description: "4 is the fourth solo studio album by Beyonce.",
  quantity: 500,
  supplier_id: 2
})
product.save

product = Product.new ({
  artist: "Beyonce",
  title: "Lemonade",
  price: 42.99,
  genre: "R&B",
  description: "Lemonade is Queen Bey’s sixth solo album and focuses on oppression Black women face as well as Jay-Z infidelity.",
  quantity: 500,
  supplier_id: 2
})
product.save

product = Product.new ({
  artist: "Lauryn Hill",
  title: "The Miseducation of Lauryn Hill",
  price: 45.99,
  genre: "Hip Hop",
  description: "The Miseducation of Lauryn Hill is a neo soul and R&B album with some songs based in hip hop soul and reggae. Its lyrics touch upon Hill's pregnancy and the turmoil within her former group the Fugees, along with themes of love and God.",
  quantity: 500,
  supplier_id: 2
})
product.save

product = Product.new ({
  artist: "Kanye West",
  title: "My Beautiful Dark Twisted Fantasy",
  price: 55.99,
  genre: "Hip Hop",
  description: "My Beautiful Dark Twisted Fantasy is the fifth studio album by American rapper and producer Kanye West. It follows a period of public and legal controversy for West, who retreated to a self-imposed exile in Hawaii in 2009",
  quantity: 500,
  supplier_id: 3
})
product.save

#Categories
category = Category.new({
  name: "R&B"
})
category.save

category = Category.new({
  name: "Hip Hop"
})
category.save

category = Category.new({
  name: "Jazz"
})
category.save

category = Category.new({
  name: "Rock"
})
category.save

category = Category.new({
  name: "Pop"
})
category.save


#Product Categories (Category_Products)
category_product = Category_Product.new({
  category_id: 2,
  product_id: 5
})
category_product.save

category_product = Category_Product.new({
  category_id: 2,
  product_id: 4
})
category_product.save

category_product = Category_Product.new({
  category_id: 1,
  product_id: 4
})
category_product.save

category_product = Category_Product.new({
  category_id: 2,
  product_id: 3
})
category_product.save

category_product = Category_Product.new({
  category_id: 1,
  product_id: 3
})
category_product.save

category_product = Category_Product.new({
  category_id: 1,
  product_id: 2
})
category_product.save

category_product = Category_Product.new({
  category_id: 5,
  product_id: 2
})
category_product.save

category_product = Category_Product.new({
  category_id: 3,
  product_id: 1
})
category_product.save

category_product = Category_Product.new({
  category_id: 4,
  product_id: 1
})
category_product.save