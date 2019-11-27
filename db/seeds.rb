puts "destroying all orders"
Order.destroy_all
puts "destroying all food"
Food.destroy_all
puts "destroying all users"
User.destroy_all

puts "creating 9 users"
test = User.create!(email:"test@test.com", full_name:"Jeremy Hildebrand", address: "Colorado", password: "123456")
test1 = User.create!(email:"Ron@aol.com", full_name:"Rony Bloom", address: "Paris", password: "123456")
test2 = User.create!(email:"josh@bros.com", full_name:"josh bjordimeer", address: "666 Llama Ln", password: "123456")
test3 = User.create!(email:"Arnie@gmail.com", full_name:"Aaron Wolf", address: "Golan Heights", password: "123456")
test4 = User.create!(email:"Ron@Artenstein.com", full_name:"Ron Gold", address: "Eilat", password: "123456")

# puts "creating foods"
# Food.create!(name: "Day old Sushi", prepared_at: DateTime.new, location: "Tel Aviv, Israel", price: 2, user: test2)
# Food.create!(name: "Glass Shards!", prepared_at: DateTime.now - 22.hours, location: "Hertzl Street, Netanya, Israel", price: 15, user: test1)
# Food.create!(name: "Cold pizza", prepared_at: DateTime.now - 40.hours, location: "Beer Sheva", price: 1, user: test3)
# Food.create!(name: "Cholent", prepared_at: DateTime.now - 75.hours, location: "Netanya", price: 0, user: test4)
# Food.create!(name: "half bottle of beer", prepared_at: DateTime.now - 100.hours, location: "TLV", price: 1, user: test1)
# Food.create!(name: "borekas", prepared_at: DateTime.now - 2.hours, location: "Eilat", price: 10, user: test2)

puts "creating some foods"
sushi = Food.create!(name: "Day old Sushi", prepared_at: DateTime.new, location: "Tel Aviv, Israel",
  description: "day old sushi", price: 2, user: test2)
glass = Food.create!(name: "Glass Shards!", prepared_at: DateTime.now - 22.hours, location: "Hertzl Street, Netanya, Israel",
  description: "crunchy", price: 15, user: test2)
pizza = Food.create!(name: "Cold pizza", prepared_at: DateTime.now - 40.hours, location: "Beer Sheva",
  description: "half pizza from last night. I'm starting my diet now", price: 1, user: test3)
chloent = Food.create!(name: "Cholent", prepared_at: DateTime.now - 75.hours, location: "Netanya",
  description: "Leftover from shabbat", price: 0, user: test4)
beer = Food.create!(name: "half bottle of beer", prepared_at: DateTime.now - 100.hours, location: "TLV",
  description: "I couldn't finish it", price: 1, user: test3)
borekas = Food.create!(name: "borekas", prepared_at: DateTime.now - 2.hours, location: "Eilat",
  description: "come and get it", price: 10, user: test4)

puts "creating an order"
Order.create!(food: sushi, user: test1)
Order.create!(food: glass, user: test)
Order.create!(food: beer, user: test2)
Order.create!(food: pizza, user: test3)
Order.create!(food: chloent, user: test4)
Order.create!(food: borekas, user: test1)
