# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all

['ATL', 'DFW', 'DEN', 'LAX', 'LAS', 'PHX', 'MIA', 'SEA', 'SFO'].each do |airport_code|
  Airport.create(airport_code: airport_code)
  puts "Airport Created: #{airport_code}"
end
