puts "destroying all orders"
Order.destroy_all
puts "destroying all food"
Food.destroy_all
puts "destroying all users"
User.destroy_all

puts "creating 9 users"
tesT = User.create!(email:"test@test.com", full_name:"Jeremy Hildebrand", address: "Colorado", password: "123456")
test2 = User.create!(email:"josh@bros.com", full_name:"josh bjordimeer", address: "666 Llama Ln", password: "123456")
test3 = User.create!(email:"Arnie@gmail.com", full_name:"Aaron Wolf", address: "Golan Heights", password: "123456")
test4 = User.create!(email:"Ron@Artenstein.com", full_name:"Ron Gold", address: "Eilat", password: "123456")
User.create!(email:"CL@yahoo.com", full_name:"Siel Artenstein", address: "Beer Sheva", password: "123456")
User.create!(email:"Assaf@aol.com", full_name:"Assaf", address: "Tel Aviv", password: "123456")
User.create!(email:"Brandon@gmail.com", full_name:"Brandon", address: "Cleveland", password: "123456")
User.create!(email:"Clara@Dixieland.com", full_name:"Clara", address: "Deutschland", password: "123456")
User.create!(email:"Merv@kby.com", full_name:"Mervin", address: "Oakland", password: "123456")


puts "creating some foods"
sushi = Food.create!(name: "Day old Sushi", freshness: 2, location: "Tel Aviv, Israel",
  description: "day old sushi", price: 2, user: test2)
glass = Food.create!(name: "Glass Shards!", freshness: 5, location: "Hertzl Street, Netanya, Israel",
  description: "crunchy", price: 15, user: test2)
pizza = Food.create!(name: "Cold pizza", freshness: 4, location: "Beer Sheva",
  description: "half pizza from last night. I'm starting my diet now", price: 1, user: test3)
chloent = Food.create!(name: "Cholent", freshness: 4, location: "Netanya",
  description: "Leftover from shabbat", price: 0, user: test4)
beer = Food.create!(name: "half bottle of beer", freshness: 1, location: "TLV",
  description: "I couldn't finish it", price: 1, user: test3)
borekas = Food.create!(name: "borekas", freshness: 5, location: "Eilat",
  description: "come and get it", price: 10, user: test4)


Food.create!(name: "chinese", freshness: 5, location: "Eilat",
  description: "come and get it", price: 10, user: test4)
Food.create!(name: "mexican", freshness: 5, location: "Tel Aviv",
  description: "come and get it", price: 10, user: test4)
Food.create!(name: "burgers", freshness: 5, location: "JLM",
  description: "come and get it", price: 10, user: test4)

puts "creating an order"
Order.create!(food: sushi, user: tesT)
Order.create!(food: glass, user: tesT)
Order.create!(food: beer, user: tesT)
Order.create!(food: pizza, user: tesT)
Order.create!(food: chloent, user: tesT)
Order.create!(food: borekas, user: tesT)
