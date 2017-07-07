# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 # Photo.destroy_all
Theme.destroy_all
 # Event.destroy_all
 # Profile.destroy_all
User.destroy_all
 # Booking.destroy_all

mindfulness = Theme.create!(name: "Mindfulness")
entertainment = Theme.create!(name: "Entertainment")
sports = Theme.create!(name: "Sports")
fashion = Theme.create!(name: "Fashion")

mehdi = User.create!(email: "mehdi@gmail.com", password: "qwerty")
marlou = User.create!(email: "marlou@gmail.com", password: "qwerty")
mojgan = User.create!(email: "mojgan@gmail.com", password: "qwerty")

event1 = Event.create!(
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

event2 = Event.create!(
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

photo1 = Photo.create!(remote_image_url: "https://res.cloudinary.com/mojgan/image/upload/v1499346731/Schermafbeelding-2015-08-06-om-18.55.10_kgdvmv.png", event: event1)
photo2 = Photo.create!(remote_image_url: "https://res.cloudinary.com/mojgan/image/upload/v1499346731/gamenight_hsrxlm.jpg", event: event1)
photo3 = Photo.create!(remote_image_url: "https://res.cloudinary.com/mojgan/image/upload/v1499346731/download_m3nlil.jpg", event: event2)
photo4 = Photo.create!(remote_image_url: "https://res.cloudinary.com/mojgan/image/upload/v1499346731/201109-orig-clothing-swap-949x534_dx7cnj.jpg", event: event2)


Booking.create!(event: event1, user: mehdi, price: 50, total: 100, starts_at: 10.days.from_now, ends_at: 12.days.from_now)
Booking.create!(event: event1, user: marlou, price: 50, total: 200, starts_at: 20.days.from_now, ends_at: 24.days.from_now)
