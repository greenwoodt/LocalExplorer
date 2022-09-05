# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Category
category1 = Category.new(name: "Hike")
category1.save!
category2 = Category.new(name: "Walk")
category2.save!
category3 = Category.new(name: "Swim")
category3.save!
category4 = Category.new(name: "Sightseeing")
category4.save!

#Users
user1 = User.new(email: "User1@email.com", password: "User1@email.com")
user1.save!
user2 = User.new(email: "User2@email.com", password: "User2@email.com")
user2.save!
user3 = User.new(email: "User3@email.com", password: "User3@email.com")
user3.save!
user4 = User.new(email: "User4@email.com", password: "User4@email.com")
user4.save!
user5 = User.new(email: "User5@email.com", password: "User5@email.com")
user5.save!
user6 = User.new(email: "User6@email.com", password: "User6@email.com")
user6.save!
user7 = User.new(email: "User7@email.com", password: "User7@email.com")
user7.save!
user8 = User.new(email: "User8@email.com", password: "User8@email.com")
user8.save!

#Profiles
profile1 = Profile.new(username: "User1", first_name: "User1", last_name: "User1", description: "User1", user: user1)
profile1.save!
profile2 = Profile.new(username: "User2", first_name: "User2", last_name: "User2", description: "User2", user: user2)
profile2.save!
profile3 = Profile.new(username: "User3", first_name: "User3", last_name: "User3", description: "User3", user: user3)
profile3.save!
profile4 = Profile.new(username: "User4", first_name: "User4", last_name: "User4", description: "User4", user: user4)
profile4.save!
profile5 = Profile.new(username: "User5", first_name: "User5", last_name: "User5", description: "User5", user: user5)
profile5.save!
profile6 = Profile.new(username: "User6", first_name: "User6", last_name: "User6", description: "User6", user: user6)
profile6.save!
profile7 = Profile.new(username: "User7", first_name: "User7", last_name: "User7", description: "User7", user: user7)
profile7.save!
profile8 = Profile.new(username: "User8", first_name: "User8", last_name: "User8", description: "User8", user: user8)
profile8.save!



#Trips
trip1 = Trip.new(name: "Trip 1", description: "Trip 1", capacity: 4, price_cents: 15 , category: category1, difficulty: "Easy", start_date: "24.09.2022", end_date: "26.09.2022", user: user1, address: "Barcelona")
trip1.save!
trip2 = Trip.new(name: "Trip 2", description: "Trip 2", capacity: 4, price_cents: 15 , category: category2, difficulty: "Medium", start_date: "24.09.2022", end_date: "26.09.2022", user: user2, address: "Madrid")
trip2.save!
trip3 = Trip.new(name: "Trip 3", description: "Trip 3", capacity: 2, price_cents: 15 , category: category3, difficulty: "Hard", start_date: "24.09.2022", end_date: "26.09.2022", user: user3, address: "Sevilla")
trip3.save!
trip4 = Trip.new(name: "Trip 4", description: "Trip 4", capacity: 3, price_cents: 15 , category: category4, difficulty: "Easy", start_date: "24.09.2022", end_date: "26.09.2022", user: user4, address: "Girona")
trip4.save!

chatroom1 = Chatroom.create()
chatroom2 = Chatroom.create()
chatroom3 = Chatroom.create()
chatroom4 = Chatroom.create()

#Bookings
booking1 = Booking.new(trip: trip1, user: user2, chatroom: chatroom1)
booking1.save!
booking2 = Booking.new(trip: trip1, user: user3, chatroom: chatroom1)
booking2.save!
booking3 = Booking.new(trip: trip1, user: user4, chatroom: chatroom1)
booking3.save!
booking4 = Booking.new(trip: trip1, user: user5, chatroom: chatroom1)
booking4.save!
booking5 = Booking.new(trip: trip2, user: user6, chatroom: chatroom2)
booking5.save!
booking8 = Booking.new(trip: trip2, user: user1, chatroom: chatroom2)
booking8.save!
booking6 = Booking.new(trip: trip3, user: user7, chatroom: chatroom3)
booking6.save!
booking7 = Booking.new(trip: trip4, user: user8, chatroom: chatroom4)
booking7.save!
