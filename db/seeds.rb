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
profile1 = Profile.new(username: "Alice_in_wonderland", first_name: "Alice", last_name: "Bardon", description: "Happy curious and extroverterd person. I'm a startup enthusiast and a global citizen. I love traveling and exploring new cultures!
  The world is a big place and I want to know it all, see it with my own eyes and take in as much as possible!
  I've been described as a problem solver, easy going and curious.
  My life motto is 'Why not?'", user: user1)
profile1.profile_photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/108298160?v=4'), filename: 'alice.jpg')
profile1.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile1.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile1.save!

profile2 = Profile.new(username: "Tibo_the_Brain", first_name: "Thibault", last_name: "Paulmann", description: "I am the brain, I am the code. A web designer, developer and student living in Catalonia. I love building prototypes, redesigning websites and discovering new
  areas while walking my dog around the city.On the weekend I head out and explore the awesomeness that is Spain.", user: user2)
profile2.profile_photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657608771/tzale9h9jj48xgmc6ya5.jpg'), filename: 'Tibo.jpg')
profile2.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile2.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile2.save!

profile3 = Profile.new(username: "Maya_Bee", first_name: "Maya", last_name: "Eyal", description: "I'm a teacher, but when I'm not teaching, I love to explore the world. Definitely a foodie! I love to cook, find new restaurants, dance and I also love meeting new people. Come join me on my trips discovering new locations and their food.", user: user3)
profile3.profile_photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657478261/plvc6oahkxt41mhtjlku.jpg'), filename: 'Maza.jpg')
profile3.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile3.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile3.save!

profile4 = Profile.new(username: "Tom_Turbo", first_name: "Tom", last_name: "Greenwood", description: "Climbing addict who has a passion for photography. I have been photographing and climbing mountains for years. I love nothing more than to share my experiences with the world.", user: user4)
profile4.profile_photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1659003271/aioqljyscik2gbgtle2c.jpg'), filename: 'Tom.jpg')
profile4.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile4.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile4.save!

profile5 = Profile.new(username: "Siona_Moon", first_name: "Siona", last_name: "Marlin", description: "Don't try to recognize me by my hair - it changes all the time! City slicker by day. Gardening enthusiast in my free time.
  An avid believer of the 'Off the beaten path' mentality. Enjoying the journey is just as important as the destination.", user: user5)
profile5.profile_photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/107324630?v=4'), filename: 'Siona.jpg')
profile5.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile5.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile5.save!

profile6 = Profile.new(username: "Nastya_Cheesecake", first_name: "Anastasiya", last_name: "Kostenko", description: "I have a child - his name is Kuzia, my lovely doggo.
  Dog lover, founder of Local Explorer and lover of mountain hikes. I'll be your guide to the most adventurous and beautiful spots in our part of Spain. ", user: user6)
profile6.profile_photo.attach(io: URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1657549836/eka2ha3ekdr62mmiqyaz.jpg'), filename: 'Nastya.jpg')
profile6.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile6.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile6.save!

profile7 = Profile.new(username: "Sonja_Hug", first_name: "Sonja", last_name: "Ladenstein", description: "Hyperactive be warned. I'm very sporty and adventurous.
  I love high adrenaline activities, sharing these experiences and having a good laugh. Finding yummy places to eat is also one of my hobbies.", user: user7)
profile7.profile_photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/108735489?v=4'), filename: 'Sonja.jpg')
profile7.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile7.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile7.save!

profile8 = Profile.new(username: "Marius_Mouse", first_name: "Marius", last_name: "van Remundt", description: "I'm an entrepreneur turned yogi, mountain biking and crypto-currency enthusiast.
  You can find me in the mountains of the Pyrenees or deep in meditation.", user: user8)
profile8.profile_photo.attach(io: URI.open('https://avatars.githubusercontent.com/u/5968588?v=4'), filename: 'Marius.jpg')
profile8.front_driver_license.attach(io: URI.open('https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg'), filename: 'driverlicense_front.jpg')
profile8.back_driver_license.attach(io: URI.open('https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/28886/ODL_Eng_Full_Back.jpg'), filename: 'driverlicense_back.jpg')
profile8.save!



#Trips
trip1 = Trip.new(name: "Mont Rebei", description: "A beautiful hike tour through the canyons of Mont Rebei. Amazing views! We will do the entire trip in 16 hours with time to swim and appreciate the vastness of the gorge. Boardwalk down the cliff after 2nd suspension bridge is definitely a highlight. These items should be on your hiking checklist: hiking backpack, plenty of water, hiking boots or shoes. ", capacity: 4, price_cents: 15 , category: category1, difficulty: "Medium", start_date: "10.09.2022", end_date: "11.09.2022", user: user1, address: "Mont Rebei")
trip1.photo.attach(io: URI.open('https://www.65ymas.com/uploads/s1/17/75/26/de-ruta-por-el-congost-de-mont-rebei-un-espectacular-desfiladero-entre-huesca-y-lerida.jpeg'), filename: 'hike.jpg')
trip1.save!

trip2 = Trip.new(name: "Girona", description: "We going sightseeing in beautiful Girona. Where some of the Game of Thrones scenes were made! Did i tell you that my parents house is there? I know so many great local restaurants and secret spots there since i shave spent all my childhood in Girona!  ", capacity: 4, price_cents: 15 , category: category4, difficulty: "Easy", start_date: "24.09.2022", end_date: "26.09.2022", user: user2, address: "Girona")
trip2.photo.attach(io: URI.open('https://espanaviajar.com/wp-content/uploads/2020/06/GIRONA-Ciudad-de-Espana.jpg'), filename: 'girona.jpg')
trip2.save!

trip3 = Trip.new(name: "Cadaques", description: "Absolutely beautiful white town directly on the costa Brava. We going to enjoy the weekend and will make a Sailboat trip together aswell! That is a great way to see the coast line up to Cap de Creus, passing Port Ligat and Dahli house. I know an awner of a beautiful sailing boat from 1925! He will give us a great discount for the trip. Imaging such a relaxing way to travel, so much more atmospheric than modern cruiser.", capacity: 4, price_cents: 15 , category: category3, difficulty: "Easy", start_date: "24.09.2022", end_date: "26.09.2022", user: user3, address: "Cadaques")
trip3.photo.attach(io: URI.open('https://itinerariesnow.files.wordpress.com/2019/07/cadaques_pueblo_marinero.jpg?w=768&h=421'), filename: 'cadaques.jpg')
trip3.save!

trip4 = Trip.new(name: "Girona Pyrenees", description: "Girona Pyrenees is one of the two tourist areas in Girona province, Costa Brava being the other one. This is a mountainous region on the south slope of the Pyrenees with plenty of traditional mountain towns. Plenty of bikes routes. We will pick one that is medium-hard level, so we will not get too exhausted and can enjoy views more!", capacity: 3, price_cents: 15 , category: category5, difficulty: "Medium", start_date: "01.10.2022", end_date: "02.10.2022", user: user8, address: "Girona Pyrenees")
trip4.photo.attach(io: URI.open('https://www.somactiunatura.com/wp-content/uploads/2021/06/77A2213-1024x683.jpg'), filename: 'mountainbike.jpg')
trip4.save!

trip5 = Trip.new(name: "Gam del Bisbe", description: "Attention! This is only for experienced Climbers! I always wanted to conquer the Gam el Bisbe Trail - who would be up for that? The GAM del Bisbe is one of Montserrat's best!. This is a rock climbing route that follows a crack and chimnies for the first three pitches. Pitch four can be considered the best free - sport slab climb in this area, sustained in 6b/c, but not mandatory because of the many bolts in place.", capacity: 3, price_cents: 10 , category: category6, difficulty: "Hard", start_date: "24.09.2022", end_date: "26.09.2022", user: user4, address: "La Panxa del Bisbe")
trip5.photo.attach(io: URI.open('https://gdm.cat/sites/default/files/2020-03/Gam%20del%20Bisbe%202.jpeg'), filename: 'climb.jpg')
trip5.save!

trip6 = Trip.new(name: "Andorra", description: "I am organizing this trip to skiing with me over the weekend in Andorra. Need fun, adventures people to join. Be warned we go fast! ;) In case you don't have a right aquipment no worries, we can stop by a renting office and get you one. We will check the prices for that in advance while planning. I'm quite flexible for the routes we could take, but I know some exeptional places with greatest views!", capacity: 3, price_cents: 50 , category: category2, difficulty: "Hard", start_date: "03.12.2022", end_date: "04.12.2022", user: user7, address: "Andorra")
trip6.photo.attach(io: URI.open('https://en.ski-france.com/media/cache/gallery_default/5603441-Grandvalira-(Andorra)-ski-area-.jpg'), filename: 'ski.jpg')
trip6.save!

trip7 = Trip.new(name: "Ruta Torrent de Cabana", description: "Do you like waterfalls? If yes, then we could go for a beautiful hiking route through dreamy mountain landscapes that runs through seven waterfalls with their respective pools of crystal clear waters, all of them in bucolic landscapes and lush vegetation. ush landscape. The water at the pools is amazing. We can do a loop trip and chill there as long as we want. No rush!", capacity: 4, price_cents: 20 , category: category1, difficulty: "Easy", start_date: "08.09.2022", end_date: "09.09.2022", user: user5, address: "Campdevànol")
trip7.photo.attach(io: URI.open('https://cdn2.wanderlust.co.uk/media/1425/magazine-campdeva-nol-waterfall.jpg?anchor=center&mode=crop&width=1920&height=0&format=auto&quality=90&rnd=131480699050000000'), filename: 'cabana.jpg')
trip7.save!

trip8 = Trip.new(name: "Aigüestortes", description: "I invite you to join me for a hiking day in the North of Spain! The Aigüestortes plateau is a completely flat place, with forests, meadows and water, where we find a circular route of wooden walkways. It is an itinerary of low difficulty but of great beauty. I was there around 4 times before and just want to come back again and again!", capacity: 4, price_cents: 30 , category: category1, difficulty: "Medium", start_date: "12.09.2022", end_date: "12.09.2022", user: user6, address: "Aigüestortes")
trip8.photo.attach(io: URI.open('https://cdn2.wanderlust.co.uk/media/1420/magazine-aiguestortes-and-estany-de-sant-maurici-national-park-3a.jpg?anchor=center&mode=crop&width=1920&height=0&format=auto&quality=90&rnd=131480698990000000'), filename: 'aiguestortes.jpg')
trip8.save!

trip9 = Trip.new(name: "Camino de Ronda", description: "Let's go for a nive swim in Costa Brava! The route of Camino de Ronda® is a path made for walking along the ancient path in the seaside of the Costa Brava. The biggest part of the path of Camino de Ronda goes through narrow paths only adapted for trekkers on foot, with slopes, constant uphills and downhills. What to expect: cristal clean water, beautiful nature, a lot of fun!", capacity: 4, price_cents: 35 , category: category3, difficulty: "Easy", start_date: "23.09.2022", end_date: "24.09.2022", user: user8, address: "Camino de Ronda")
trip9.photo.attach(io: URI.open('https://cdn2.wanderlust.co.uk/media/1422/magazine-calella-de-palafrugell.jpg?anchor=center&mode=crop&width=1920&height=0&format=auto&quality=90&rnd=131480699010000000'), filename: 'Camino.jpg')
trip9.save!

trip10 = Trip.new(name: "Sendero Vinyanova", description: "Hard but super rewarding mountainbike trail! Expert mountain bike ride. Good fitness required. Advanced riding skills necessary. Some portions of the Tour may require you to push your bike. The starting point of the Tour is right next to a parking lot. You may have your own bike to be able to join the trip. I have 4 places avaliable in my track! Important: let me know if you may have any tecnical ussues with your bike, so we will take the required equipment to be able to do a quick fix. See you soooooon! ", capacity: 4, price_cents: 20 , category: category5, difficulty: "Hard", start_date: "23.09.2022", end_date: "25.09.2022", user: user7, address: "el Bruc")
trip10.photo.attach(io: URI.open('https://www.discovertasmania.com.au/siteassets/experiences/mountain-bike-networks/135403-2.jpg'), filename: 'Vinyanova.jpg')
trip10.save!

trip11 = Trip.new(name: "Kayaking in Mont-Rebei", description: "Amazingly beautiful Kayak Trip! We start and finish the activity in the pier of Corçà. The travelled kayaking distance through Congost de Mont-Rebei is 14 kilometres, round trip, and approximately 4 hours. Its technical difficulty is medium-low, and the physical demand is medium. In order to do this activity, you will need the following equipment: footwear and waterproof clothes (or, otherwise, swimwear or spare clothing), sunglasses, fastener for the sunglasses, cap, sun protection, water (2 litres per person) and food (optional, but recommended).", capacity: 4, price_cents: 50 , category: category3, difficulty: "Medium", start_date: "15.09.2022", end_date: "15.09.2022", user: user5, address: "Congost de Mont-rebei")
trip11.photo.attach(io: URI.open('https://www.climbing.com/wp-content/uploads/2022/07/Adventure_Publisher_story_Spain_RedPaddle_MSR_LP_2022-106-scaled.jpg?width=730'), filename: 'kayak.jpg')
trip11.save!

trip12 = Trip.new(name: "Climb Mont-Rebei", description: "Exciting and beautiful climb at Mont Rebei. Montrebei is a spectacular gorge (the Congost de Mont Rebei) with the style of climbing being adventurous multi-pitch trad climbing at its best. The routes are up to 550m high on huge limestone walls, with many routes between 150m and 400m long. We will rent the equipment and choose the route after we arrive. Do not forget to bring your climbing shoes, water and food. The level of dificulty is really high! Be sure you have a climbing experience! Will be glad to meet new people and have amazing time!", capacity: 4, price_cents: 15 , category: category6, difficulty: "Hard", start_date: "10.10.2022", end_date: "11.10.2022", user: user1, address: "Rampa d'Escales del Congost Mont Rebei")
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
