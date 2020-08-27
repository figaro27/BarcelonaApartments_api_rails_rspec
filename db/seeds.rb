# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url = [
    "https://specials-images.forbesimg.com/imageserve/5f2af4bcdf7d39b8a26bf227/960x0.jpg?fit=scale",
    "https://images.unsplash.com/photo-1576675784201-0e142b423952?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"
]

10.times { Apartment.create!(
        title: "Payjair St 1" + rand(1..10).to_s(),
        price: rand(200.0..500.0).round(1),
        sqm: rand(100..300),
        numofbed: rand(1..5),
        numofbath: rand(1..3),
        picture: url[rand(0..1)]
        )
    }
