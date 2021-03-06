# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all

15.times do 
    city = City.create!(city_name: Faker::Address.city)
end

100.times do 
    dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, city_id: City.all.sample.id)
    dog = Dog.create!(name: Faker::GreekPhilosophers.name, city_id: City.all.sample.id)
end

puts "dogs and dogsitters are ready !"

60.times do 
    stroll = Stroll.create!(date: Faker::Date.between(from: '2020-04-01', to: '2025-09-28'), dogsitter_id: Dogsitter.all.sample.id, dog_id: Dog.all.sample.id)
end

puts "let's stroll"