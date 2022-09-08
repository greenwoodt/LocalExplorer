# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Review.destroy_all
Category.destroy_all
User.destroy_all
Profile.destroy_all
Trip.destroy_all
Chatroom.destroy_all


#Category
category1 = Category.new(name: "Hike")
category1.save!

category2 = Category.new(name: "Skiing/Snowboarding")
category2.save!

category3 = Category.new(name: "Swim")
category3.save!

category4 = Category.new(name: "Sightseeing")
category4.save!

category5 = Category.new(name: "Mountainbiking")
category5.save!

category6 = Category.new(name: "Climbing")
category6.save!

#Users
user1 = User.new(email: "Alice@email.com", password: "Alice@email.com")
user1.save!
user2 = User.new(email: "Tibo@email.com", password: "Tibo@email.com")
user2.save!
user3 = User.new(email: "Maya@email.com", password: "Maya@email.com")
user3.save!
user4 = User.new(email: "Tom@email.com", password: "Tom@email.com")
user4.save!
user5 = User.new(email: "Siona@email.com", password: "Siona@email.com")
user5.save!
user6 = User.new(email: "Nastya@email.com", password: "Nastya@email.com")
user6.save!
user7 = User.new(email: "Sonja@email.com", password: "Sonja@email.com")
user7.save!
user8 = User.new(email: "Marius@email.com", password: "Marius@email.com")
user8.save!

#Profiles
profile1 = Profile.new(username: "Alice_in_wonderland", first_name: "Alice", last_name: "Bardon", description: "Happy curious and extroverterd person", user: user1)
profile1.profile_photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/108298160?v=4'), filename: 'alice.jpg')
profile1.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile1.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile1.save!

profile2 = Profile.new(username: "Tibo_the_Brain", first_name: "Thibault", last_name: "Paulmann", description: "I am the brain I am the code", user: user2)
profile2.profile_photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657608771/tzale9h9jj48xgmc6ya5.jpg'), filename: 'Tibo.jpg')
profile2.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile2.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile2.save!

profile3 = Profile.new(username: "Maya_Bee", first_name: "Maya", last_name: "Eyal", description: "Do you want to go to the Malaysian place?", user: user3)
profile3.profile_photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657478261/plvc6oahkxt41mhtjlku.jpg'), filename: 'Maza.jpg')
profile3.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile3.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile3.save!

profile4 = Profile.new(username: "Tom_Turbo", first_name: "Tom", last_name: "Greenwood", description: "Climbing addict who has a passion for photography", user: user4)
profile4.profile_photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1659003271/aioqljyscik2gbgtle2c.jpg'), filename: 'Tom.jpg')
profile4.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile4.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile4.save!

profile5 = Profile.new(username: "Siona_Moon", first_name: "Siona", last_name: "Marlin", description: "Don't try to recognize me by my hair - it changes all the time!∫", user: user5)
profile5.profile_photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/107324630?v=4'), filename: 'Siona.jpg')
profile5.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile5.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile5.save!

profile6 = Profile.new(username: "Nastya_Cheesecake", first_name: "Anastassiya", last_name: "Kostenko", description: "I have a child - his name is Kuzia", user: user6)
profile6.profile_photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657549836/eka2ha3ekdr62mmiqyaz.jpg'), filename: 'Nastya.jpg')
profile6.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile6.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile6.save!

profile7 = Profile.new(username: "Sonja_Hug", first_name: "Sonja", last_name: "Ladenstein", description: "Hyperactive be warned", user: user7)
profile7.profile_photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/108735489?v=4'), filename: 'Sonja.jpg')
profile7.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile7.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile7.save!

profile8 = Profile.new(username: "Marius_Mouse", first_name: "Marius", last_name: "van Remundt", description: "I love crypto currency", user: user8)
profile8.profile_photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/5968588?v=4'), filename: 'Marius.jpg')
profile8.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile8.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile8.save!



#Trips
trip1 = Trip.new(name: "Mont Rebei", description: "A beautiful hike tour through the canyons of Mont Rebei. Amazing views!", capacity: 4, price_cents: 15 , category: category1, difficulty: "Medium", start_date: "10.09.2022", end_date: "11.09.2022", user: user1, address: "Mont Rebei")
trip1.photo.attach(io: URI.open('https://www.65ymas.com/uploads/s1/17/75/26/de-ruta-por-el-congost-de-mont-rebei-un-espectacular-desfiladero-entre-huesca-y-lerida.jpeg'), filename: 'hike.jpg')
trip1.save!

trip2 = Trip.new(name: "Girona", description: "We going sightseeing in beautiful Girona. Where some of the Game of Thrones scenes were made", capacity: 4, price_cents: 15 , category: category4, difficulty: "Easy", start_date: "24.09.2022", end_date: "26.09.2022", user: user2, address: "Girona")
trip2.photo.attach(io: URI.open('https://espanaviajar.com/wp-content/uploads/2020/06/GIRONA-Ciudad-de-Espana.jpg'), filename: 'girona.jpg')
trip2.save!

trip3 = Trip.new(name: "Cadaques", description: "Absolutely beautiful white town directly on the costa Brava. We going to enjoy the weekend and will make a Sailboat trip together aswell!", capacity: 4, price_cents: 15 , category: category3, difficulty: "Easy", start_date: "24.09.2022", end_date: "26.09.2022", user: user3, address: "Cadaques")
trip3.photo.attach(io: URI.open('https://itinerariesnow.files.wordpress.com/2019/07/cadaques_pueblo_marinero.jpg?w=768&h=421'), filename: 'cadaques.jpg')
trip3.save!

trip4 = Trip.new(name: "Girona Pyrenees", description: "On this Mountainbike trip will ride along the beautiful Costa Brava and enjoy amazing views on our bikes", capacity: 3, price_cents: 15 , category: category5, difficulty: "Medium", start_date: "01.10.2022", end_date: "02.10.2022", user: user8, address: "Girona Pyrenees")
trip4.photo.attach(io: URI.open('https://www.somactiunatura.com/wp-content/uploads/2021/06/77A2213-1024x683.jpg'), filename: 'mountainbike.jpg')
trip4.save!

trip5 = Trip.new(name: "Gam del Bisbe", description: "Attention! This is only for experienced Climbers! I always wanted to conquer the Gam el Bisbe Trail - who would be up for that?", capacity: 3, price_cents: 10 , category: category6, difficulty: "Hard", start_date: "24.09.2022", end_date: "26.09.2022", user: user4, address: "La Panxa del Bisbe")
trip5.photo.attach(io: URI.open('https://gdm.cat/sites/default/files/2020-03/Gam%20del%20Bisbe%202.jpeg'), filename: 'climb.jpg')
trip5.save!

trip6 = Trip.new(name: "Andorra", description: "Who wants to go Skiing/Snowboarding with me over the weekend in Andorra. Be warned we go fast! ;)", capacity: 3, price_cents: 50 , category: category2, difficulty: "Hard", start_date: "03.12.2022", end_date: "04.12.2022", user: user7, address: "Andorra")
trip6.photo.attach(io: URI.open('https://en.ski-france.com/media/cache/gallery_default/5603441-Grandvalira-(Andorra)-ski-area-.jpg'), filename: 'ski.jpg')
trip6.save!

trip7 = Trip.new(name: "Ruta Torrent de Cabana", description: "Amazing waterfall!!", capacity: 4, price_cents: 20 , category: category1, difficulty: "Easy", start_date: "08.09.2022", end_date: "09.09.2022", user: user5, address: "Campdevànol")
trip7.photo.attach(io: URI.open('https://cdn2.wanderlust.co.uk/media/1425/magazine-campdeva-nol-waterfall.jpg?anchor=center&mode=crop&width=1920&height=0&format=auto&quality=90&rnd=131480699050000000'), filename: 'cabana.jpg')
trip7.save!

trip8 = Trip.new(name: "Aigüestortes", description: "Beautiful hike!", capacity: 4, price_cents: 30 , category: category1, difficulty: "Medium", start_date: "12.09.2022", end_date: "12.09.2022", user: user6, address: "Aigüestortes")
trip8.photo.attach(io: URI.open('https://cdn2.wanderlust.co.uk/media/1420/magazine-aiguestortes-and-estany-de-sant-maurici-national-park-3a.jpg?anchor=center&mode=crop&width=1920&height=0&format=auto&quality=90&rnd=131480698990000000'), filename: 'aiguestortes.jpg')
trip8.save!

trip9 = Trip.new(name: "Camino de Ronda", description: "Beautiful swim!!", capacity: 4, price_cents: 35 , category: category3, difficulty: "Easy", start_date: "23.09.2022", end_date: "24.09.2022", user: user8, address: "Camino de Ronda")
trip9.photo.attach(io: URI.open('https://cdn2.wanderlust.co.uk/media/1422/magazine-calella-de-palafrugell.jpg?anchor=center&mode=crop&width=1920&height=0&format=auto&quality=90&rnd=131480699010000000'), filename: 'Camino.jpg')
trip9.save!

trip10 = Trip.new(name: "Sedero de la Vinyanova", description: "Hard but super rewarding Mountainbike trail!!", capacity: 4, price_cents: 20 , category: category5, difficulty: "Hard", start_date: "23.09.2022", end_date: "25.09.2022", user: user7, address: "Sedero de la Vinyanova")
trip10.photo.attach(io: URI.open('https://www.discovertasmania.com.au/siteassets/experiences/mountain-bike-networks/135403-2.jpg'), filename: 'Vinyanova.jpg')
trip10.save!

trip11 = Trip.new(name: "Kayaking in Mont-Rebei", description: "Amazingly beautiful Kayak Trip!", capacity: 4, price_cents: 50 , category: category3, difficulty: "Medium", start_date: "15.09.2022", end_date: "15.09.2022", user: user5, address: "Congost de Mont-rebei")
trip11.photo.attach(io: URI.open('https://www.climbing.com/wp-content/uploads/2022/07/Adventure_Publisher_story_Spain_RedPaddle_MSR_LP_2022-106-scaled.jpg?width=730'), filename: 'kayak.jpg')
trip11.save!

trip12 = Trip.new(name: "Climb Mont-Rebei", description: "Exciting and beautiful climb at Mont Rebei", capacity: 4, price_cents: 15 , category: category6, difficulty: "Hard", start_date: "10.10.2022", end_date: "11.10.2022", user: user1, address: "Rampa d'Escales del Congost Mont Rebei")
trip12.photo.attach(io: URI.open('https://www.climbing.com/wp-content/uploads/2022/07/C-Adri-Martinez_Donec-Perficiam-32-scaled.jpg?crop=535:301&width=1070&enable=upscale'), filename: 'climb2.jpg')
trip12.save!

chatroom1 = Chatroom.create()
chatroom2 = Chatroom.create()
chatroom3 = Chatroom.create()
chatroom4 = Chatroom.create()
chatroom5 = Chatroom.create()
chatroom6 = Chatroom.create()
chatroom7 = Chatroom.create()
chatroom8 = Chatroom.create()
chatroom9 = Chatroom.create()
chatroom10 = Chatroom.create()
chatroom11 = Chatroom.create()
chatroom12 = Chatroom.create()

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

booking7 = Booking.new(trip: trip4, user: user7, chatroom: chatroom4)
booking7.save!

booking8 = Booking.new(trip: trip5, user: user8, chatroom: chatroom5)
booking8.save!

booking9 = Booking.new(trip: trip6, user: user1, chatroom: chatroom6)
booking9.save!

booking10 = Booking.new(trip: trip7, user: user1, chatroom: chatroom7)
booking10.save!

booking11 = Booking.new(trip: trip7, user: user3, chatroom: chatroom7)
booking11.save!

booking12 = Booking.new(trip: trip8, user: user4, chatroom: chatroom8)
booking12.save!

booking13 = Booking.new(trip: trip9, user: user5, chatroom: chatroom9)
booking13.save!

booking14 = Booking.new(trip: trip9, user: user6, chatroom: chatroom9)
booking14.save!

booking15 = Booking.new(trip: trip10, user: user3, chatroom: chatroom10)
booking15.save!

booking16 = Booking.new(trip: trip10, user: user5, chatroom: chatroom10)
booking16.save!

booking17 = Booking.new(trip: trip10, user: user8, chatroom: chatroom10)
booking17.save!

booking18 = Booking.new(trip: trip11, user: user6, chatroom: chatroom11)
booking18.save!

booking19 = Booking.new(trip: trip12, user: user5, chatroom: chatroom12)
booking19.save!

booking20 = Booking.new(trip: trip12, user: user2, chatroom: chatroom12)
booking20.save!
