# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

julia = User.create!(name: 'Julia', description: 'Figma genius who loves good food', email: 'okayy@hotmail.com', password: 'Ola1234', country: 'Brazil', role: 'guest', birthdate: '06/02/1992', address: 'dumb street')
carla = User.create!(name: 'Carla', description: 'Rails genius who loves italian food', email: 'comeonnnn@hotmail.com', password: 'Olaa1234', country: 'Brazil', role: 'host', birthdate: '08/02/1992', address: 'smart street')
casa_di_dona_anna = Dining.create!(date: '09/07/2022', time: Time.now, category: 'Italian', user: carla)
julia_italy = Booking.create!(user: julia, dining: casa_di_dona_anna, comment: 'Would like to learn how to make pasta')
