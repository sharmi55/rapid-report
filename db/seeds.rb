# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating seed data..."

sharmi = User.create!(email: 'sharmi@somewhere.com', password: 'password')

50.times do
  Report.create!(
    birthday: (rand(10)+1).years.ago,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    user: sharmi,
    grades: 'Vietnamese 94, Math 100, English 89, History 93, Biology 76',
    line1: Faker::Address.street_address,
    province: Faker::Address.state,
    phone1: Faker::PhoneNumber.phone_number,
    relation1: Faker::Name.name,
    phone2: Faker::PhoneNumber.phone_number,
    relation2: Faker::Name.name,
    summary: Faker::Hipster.paragraphs
    )
end
