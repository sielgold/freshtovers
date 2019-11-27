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

Food.create!(name: "Day old Sushi", prepared_at: DateTime.new, location: "Tel Aviv, Israel", price: 2, user_id: 1)
Food.create!(name: "Glass Shards!", prepared_at: DateTime.now - 22.hours, location: "Hertzl Street, Netanya, Israel", price: 15, user_id: 7)
Food.create!(name: "Cold pizza", prepared_at: DateTime.now - 40.hours, location: "Beer Sheva", price: 1, user_id: 2)
Food.create!(name: "Cholent", prepared_at: DateTime.now - 75.hours, location: "Netanya", price: 0, user_id: 9)
Food.create!(name: "half bottle of beer", prepared_at: DateTime.now - 100.hours, location: "TLV", price: 1, user_id: 4)
Food.create!(name: "borekas", prepared_at: DateTime.now - 2.hours, location: "Eilat", , price: 10, user_id: 2)

Order.create!(food_id: 2, user_id: 4)
