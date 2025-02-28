require 'faker'

2.times do
  Restaurant.create!(
    name: Faker::Restaurant.name, 
    location: Faker::Address.street_address
  )
end

3.times do 
  Reservation.create!(
    guest_name: Faker::Name.name,
    party_size: Faker::Number.within(range: 1..10),
    cancelled: Faker::Boolean.boolean, 
    time: rand(1100..1159),
    date: "02/28/2025",
    restaurant_id: rand(1..2)
  )
end
