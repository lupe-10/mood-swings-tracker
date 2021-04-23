# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Creado moods before"

mood_before1 = MoodBefore.create([{ anxiety_level: '1' }, { motivation_level: 'Lord of the Rings' }, motivation_level: "2", mood_level: "tired", cardiac_frecuency: "80bpm", respiratory_rate: "12pm"])


puts "Creando patient Wonder Woman"
Patient.create(email: "wonderwoman@email.com", password: "111111", first_name: "Wonder", last_name: "Woman", birthday: "07/3/1988", gender: "female", phone_number: 01303031, address: "Temiscira 424 - Marvel Universe", pre_existing_disease: "not inmortal")