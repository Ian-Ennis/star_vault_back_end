puts "destroying old data"
Constellation.destroy_all
Star.destroy_all
# User.destroy_all

puts "🌱 Seeding space..."

# constellations
Constellation.create(constellation_name: "Andromeda")
Constellation.create(constellation_name: "Aquarius")
Constellation.create(constellation_name: "Cancer")
Constellation.create(constellation_name: "Canis Minor")
Constellation.create(constellation_name: "Centaurus")
Constellation.create(constellation_name: "Cetus")
Constellation.create(constellation_name: "Cygnus")
Constellation.create(constellation_name: "Hercules")
Constellation.create(constellation_name: "Leo")
Constellation.create(constellation_name: "Pegasus")
puts 'Constellations created'

# users

# User.create(username: "#{Faker::Name.male_first_name}#{rand(1..50)}")
# User.create(username: "#{Faker::Name.male_first_name}#{rand(1..50)}")
# User.create(username: "#{Faker::Name.female_first_name}#{rand(1..50)}")
# User.create(username: "#{Faker::Name.female_first_name}#{rand(1..50)}")
# User.create(username: "#{Faker::Name.female_first_name}#{rand(1..50)}")
# puts 'Users created'

# stars

Star.create(name: "Upsilon Andromedae", distance: 44, apparent_magnitude: 4.09, temperature: 6107, confirmed_planets: 4, constellation_id: Constellation.find_by(constellation_name: 'Andromeda').id)
Star.create(name: "TRAPPIST-1", distance: 39.5, apparent_magnitude: 18.80, temperature: 2550, confirmed_planets: 7, constellation_id: Constellation.find_by(constellation_name: 'Aquarius').id)
Star.create(name: "EPIC 251319382", distance: 577, apparent_magnitude: 11.12, temperature: 5791, confirmed_planets: 3, constellation_id: Constellation.find_by(constellation_name: 'Cancer').id)
Star.create(name: "Luyten's Star", distance: 11.20, apparent_magnitude: 9.872, temperature: 3150, confirmed_planets: 2, constellation_id: Constellation.find_by(constellation_name: 'Canis Minor').id)
Star.create(name: "Proxima Centauri", distance: 4.244, apparent_magnitude: 15.60, temperature: 3042, confirmed_planets: 2, constellation_id: Constellation.find_by(constellation_name: 'Centaurus').id)
Star.create(name: "Tau Ceti", distance: 11.905, apparent_magnitude: 3.49, temperature: 5344, confirmed_planets: 4, constellation_id: Constellation.find_by(constellation_name: 'Cetus').id)
Star.create(name: "Kepler-11", distance: 1999, apparent_magnitude: 13.69, temperature: 5681, confirmed_planets: 6, constellation_id: Constellation.find_by(constellation_name: 'Cygnus').id)
Star.create(name: "HD 164922", distance: 72, apparent_magnitude: 7.01, temperature: 5293, confirmed_planets: 4, constellation_id: Constellation.find_by(constellation_name: 'Hercules').id)
Star.create(name: "K2-3", distance: 143.9, apparent_magnitude: 12.168, temperature: 3835, confirmed_planets: 3, constellation_id: Constellation.find_by(constellation_name: 'Leo').id)
Star.create(name: "HR 8799", distance: 129, apparent_magnitude: 5.96, temperature: 7429, confirmed_planets: 4, constellation_id: Constellation.find_by(constellation_name: 'Pegasus').id)
puts 'Stars created'

# Seed your database here

puts "✅ Done seeding!"
