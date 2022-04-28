# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |index|
  User.create(
    name: "Name #{index}",
    email: "email#{index}@gmail.com",
    username: "username#{1}",
    password: "111111",
    role: 0, 
  )
end

10.times do |index|
  Category.create(
    name: "Category #{index}",
    description: "Description #{index}"
  )
end

100.times do |index|
  category = Category.all.sample
  Product.create(
    name: "Product #{index}",
    unit: "",
    price: 1000,
    quantity_stock: 1000,
    description: "Description #{index}",
    category_id: category.id
  )
end
