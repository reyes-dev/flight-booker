# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all
Flight.delete_all

%w[ATL DFW DEN LAX LAS PHX MIA SEA SFO].each do |airport_code|
  Airport.create(airport_code: airport_code)
  puts "Airport Created: #{airport_code}"
end

10.times do
  airport_ids = [*1..9].sample(2)
  departure_date = Time.zone.now + rand(0..1.years) + rand(0..12.months) + rand(1..31).days
  Flight.create(departure_airport_id: airport_ids[0], arrival_airport_id: airport_ids[1],
                departure_date: departure_date, flight_duration: rand(1..12))
  puts "Flight Created: From #{Flight.last.departure_airport.airport_code} to #{Flight.last.arrival_airport.airport_code}"
end