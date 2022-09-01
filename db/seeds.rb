# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

category_one = Category.new(name: "Hike")
category_one.save!
category_two = Category.new(name: "Walk")
category_two.save!
category_three = Category.new(name: "Swim")
category_three.save!
category_four = Category.new(name: "Sightseeing")
category_four.save!


Trip.create(user: User.last, category: category_one)
Trip.create(user: User.last, category: category_two)
Trip.create(user: User.last, category: category_three)
Trip.create(user: User.last, category: category_four)
