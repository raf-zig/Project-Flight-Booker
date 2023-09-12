# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create([{ code: 'BGF' }, { code: 'LKJ' }])
Flight.create([
  { departure_time: Time.new(2023, 7, 1), duration: 1, departure_airport_id: 1, arrival_airport_id: 2 },
  { departure_time: Time.new(2023, 7, 1), duration: 3, departure_airport_id: 2, arrival_airport_id: 3 },
  { departure_time: Time.new(2023, 7, 4), duration: 5, departure_airport_id: 3, arrival_airport_id: 4 },
  { departure_time: Time.new(2023, 7, 4), duration: 4, departure_airport_id: 4, arrival_airport_id: 5 },
  { departure_time: Time.new(2023, 7, 2), duration: 1, departure_airport_id: 1, arrival_airport_id: 2 },
  { departure_time: Time.new(2023, 7, 2), duration: 3, departure_airport_id: 2, arrival_airport_id: 3 },
  { departure_time: Time.new(2023, 7, 3), duration: 5, departure_airport_id: 3, arrival_airport_id: 4 },
  { departure_time: Time.new(2023, 7, 3), duration: 4, departure_airport_id: 4, arrival_airport_id: 5 },
  { departure_time: Time.new(2023, 7, 6), duration: 3, departure_airport_id: 5, arrival_airport_id: 1 },
  { departure_time: Time.new(2023, 7, 6), duration: 5, departure_airport_id: 1, arrival_airport_id: 3 },
  { departure_time: Time.new(2023, 7, 5), duration: 1, departure_airport_id: 2, arrival_airport_id: 5 },
  { departure_time: Time.new(2023, 7, 5), duration: 1, departure_airport_id: 4, arrival_airport_id: 1 }
])
