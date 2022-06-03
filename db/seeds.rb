require 'faker'

puts 'Creating 10 fake users'
100.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Code.npi,
    name: Faker::Name.name,
    avatar: Faker::Avatar.image(slug: "my-own-slug", size: "10x10", format: "jpg"),
    description: Faker::Quote.most_interesting_man_in_the_world,
    phone_number: Faker::PhoneNumber,
    country: Faker::Address.country,
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
    role: ["Guest", "Host"].sample,
    city: Faker::Address.city,
    address: Faker::Address.full_address
  )
  user.save!
end
puts "finished"

puts 'Creating 10 fake dinings'
10.times do
  dining = Dining.new(
    date: Faker::Date.between(from: '20120-09-23', to: '2022-12-30'),
    category: Faker::Restaurant.type,
    name: Faker::Restaurant.name,
    comment: Faker::Restaurant.description,
    max_guests: Faker::Number.between(from: 1, to: 10),
    address: Faker::Address.full_address,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    price: Faker::Number.decimal(l_digits: 2),
    user_id: Faker::Number.between(from: 1, to: 10)
  )
  dining.save!
end
puts "finished"

puts 'Creating 10 fake booking'
10.times do
  booking = Booking.new(
    user_id: Faker::Number.between(from: 1, to: 100),
    dining_id: Faker::Number.between(from: 1, to: 10),
    comment: Faker::Superhero.descriptor
  )
  booking.save!
end
puts "finished"
