puts "destroying old data"
Constellation.destroy_all
Star.destroy_all
User.destroy_all

puts "🌱 Seeding space..."

# constellations
Constellation.create(name: "Andromeda")
Constellation.create(name: "Aquarius")
Constellation.create(name: "Cancer")
Constellation.create(name: "Canis Minor")
Constellation.create(name: "Centaurus")
Constellation.create(name: "Cetus")
Constellation.create(name: "Cygnus")
Constellation.create(name: "Hercules")
Constellation.create(name: "Leo")
Constellation.create(name: "Pegasus")
puts 'Constellations created'

# users

User.create(username: "#{Faker::Name.male_first_name}#{rand(1..50)}")
User.create(username: "#{Faker::Name.male_first_name}#{rand(1..50)}")
User.create(username: "#{Faker::Name.female_first_name}#{rand(1..50)}")
User.create(username: "#{Faker::Name.female_first_name}#{rand(1..50)}")
User.create(username: "#{Faker::Name.female_first_name}#{rand(1..50)}")
puts 'Users created'

# stars
# create_table :stars do |t|
#     t.string :name
#     t.integer :distance
#     t.integer :apparent_magnitude
#     t.integer :confirmed_planets
#     t.references :observer
#     t.references :constellation

Star.create(name: "Upsilon Andromedae", distance: 44, apparent_magnitude: 4.09, confirmed_planets: 4, user_id: User.first.id, constellation_id: Constellation.find_by(name: 'Andromeda').id)
Star.create(name: "TRAPPIST-1", distance: 	39.5, apparent_magnitude: 18.80, confirmed_planets: 7, user_id: User.first.id, constellation_id: Constellation.find_by(name: 'Aquarius').id)
Star.create(name: "EPIC 251319382", distance: 577, apparent_magnitude: 11.12, confirmed_planets: 3, user_id: User.fifth.id, constellation_id: Constellation.find_by(name: 'Cancer').id)
Star.create(name: "Luyten's Star", distance: 11.20, apparent_magnitude: 9.872, confirmed_planets: 2, user_id: User.second.id, constellation_id: Constellation.find_by(name: 'Canis Minor').id)
Star.create(name: "Proxima Centauri", distance: 4.244, apparent_magnitude: 15.60, confirmed_planets: 2, user_id: User.third.id, constellation_id: Constellation.find_by(name: 'Centaurus').id)
Star.create(name: "Tau Ceti", distance: 11.905, apparent_magnitude: 3.49, confirmed_planets: 4, user_id: User.third.id, constellation_id: Constellation.find_by(name: 'Cetus').id)
Star.create(name: "Kepler-11", distance: 1999, apparent_magnitude: 13.69, confirmed_planets: 6, user_id: User.fifth.id, constellation_id: Constellation.find_by(name: 'Cygnus').id)
Star.create(name: "HD 164922", distance: 72, apparent_magnitude: 7.01, confirmed_planets: 4, user_id: User.second.id, constellation_id: Constellation.find_by(name: 'Hercules').id)
Star.create(name: "K2-3", distance: 143.9, apparent_magnitude: 12.168, confirmed_planets: 3, user_id: User.first.id, constellation_id: Constellation.find_by(name: 'Leo').id)
Star.create(name: "HR 8799", distance: 129, apparent_magnitude: 5.96, confirmed_planets: 4, user_id: User.fourth.id, constellation_id: Constellation.find_by(name: 'Pegasus').id)
puts 'Stars created'

# Seed your database here

puts "✅ Done seeding!"
