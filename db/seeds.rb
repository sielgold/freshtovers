User.destroy_all
Food.destroy_all

User.create!(email:"Jeremy@gmail.com", full_name:"Jeremy Hildebrand", address: "Colorado", password: "123456")
User.create!(email:"josh@bros.com", full_name:"josh bjordimeer", address: "666 Llama Ln", password: "123456")
User.create!(email:"Arnie@gmail.com", full_name:"Aaron Wolf", address: "Golan Heights", password: "123456")
User.create!(email:"Ron@Artenstein.com", full_name:"Ron Gold", address: "Eilat", password: "123456")
User.create!(email:"CL@yahoo.com", full_name:"Siel Artenstein", address: "Beer Sheva", password: "123456")
User.create!(email:"Assaf@aol.com", full_name:"Assaf", address: "Tel Aviv", password: "123456")
User.create!(email:"Brandon@gmail.com", full_name:"Brandon", address: "Cleveland", password: "123456")
User.create!(email:"Clara@Dixieland.com", full_name:"Clara", address: "Deutschland", password: "123456")
User.create!(email:"Merv@kby.com", full_name:"Mervin", address: "Oakland", password: "123456")

Food.create!(name: "Day old Sushi", freshness: 2, location: "Tel Aviv, Israel",
  description: "day old sushi", price: 2, user_id: 1)
Food.create!(name: "Glass Shards!", freshness: 5, location: "Hertzl Street, Netanya, Israel",
  description: "crunchy", price: 15, user_id: 7)
Food.create!(name: "Cold pizza", freshness: 4, location: "Beer Sheva",
  description: "half pizza from last night. I'm starting my diet now", price: 1, user_id: 2)
Food.create!(name: "Cholent", freshness: 4, location: "Netanya",
  description: "Leftover from shabbat", price: 0, user_id: 9)
Food.create!(name: "half bottle of beer", freshness: 1, location: "TLV",
  description: "I couldn't finish it", price: 1, user_id: 4)
Food.create!(name: "borekas", freshness: 5, location: "Eilat",
  description: "come and get it", price: 10, user_id: 2)

Order.create!(food_id: 2, user_id: 4)
