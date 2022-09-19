# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all
Flight.delete_all
Booking.delete_all
Passenger.delete_all

%w[ATL DEN PHX].each do |airport_code|
  Airport.create(airport_code: airport_code)
  puts "Airport Created: #{airport_code}"
end

1000.times do
  airport_ids = [*1..3].sample(2)
  departure_date = (Time.now + rand(1..31).days + rand(1..24).hours + rand(1..60).minutes).to_s[0,16]
  Flight.create(departure_airport_id: airport_ids[0], arrival_airport_id: airport_ids[1],
                departure_date: departure_date, flight_duration: rand(1..4))
  puts "Flight Created: From #{Flight.last.departure_airport.airport_code} to #{Flight.last.arrival_airport.airport_code}"
end