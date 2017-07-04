# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Theme.destroy_all
User.destroy_all

mindfulness = Theme.create(name: "Mindfulness")
entertainment = Theme.create(name: "Entertainment")
sports = Theme.create(name: "Sports")
fashion = Theme.create(name: "Fashion")

mehdi = User.create(email: "mehdi@gmail.com", password: "qwerty")
marlou = User.create(email: "marlou@gmail.com", password: "qwerty")
mojgan = User.create(email: "mojgan@gmail.com", password: "qwerty")

Event.create(
          name: "Game Night",
          description: "Fun and Competative",
          location: "Mehdi en Marlou's Casa",
          price: 0,
          capacity: 10,
          includes_food: true,
          includes_drinks: true,
          starts_at: DateTime.new(2018,02,03),
          ends_at: DateTime.new(2019,05,07),
          active: true,
          user: marlou,
          themes: [entertainment, sports]
          )

Event.create(
          name: "Clothes swap",
          description: "Inspiring",
          location: "Fashion Institute",
          price: 0,
          capacity: 20,
          includes_food: true,
          includes_drinks: true,
          starts_at: DateTime.new(2018,02,04),
          ends_at: DateTime.new(2019,05,05),
          active: true,
          user: mojgan,
          themes: [entertainment, fashion]
          )




# User.destroy_all
#
# mojgan = User.create(email: "mojgan.zolghadr@gmail.com", password: "qwerty")
#
# event = Event.create!(
#     name:"Hackaton",
#     description:"A day of fun and hacking",
#     location:"Singel 542",
#     price:0,
#     capacity:20,
#     includes_food:true,
#     includes_drinks:true,
#     starts_at: DateTime.new(2018,02,03),
#     ends_at: DateTime.new(2019,05,07),
#     active:true,
#     user:mojgan)
