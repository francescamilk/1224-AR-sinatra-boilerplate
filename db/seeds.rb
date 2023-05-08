require "faker"

puts "Clearing the db..."
Restaurant.destroy_all

puts "Creating 10 restaurants..."
10.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        rating: rand(1..5)
    )
end

puts "Done! #{Restaurant.count} restaurants created."
