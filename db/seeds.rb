# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sharmi = User.create!(email: 'sharmi@somewhere.com', password: 'password')

20.times do
  Report.create!(
    birthday: (rand(10)+1).years.ago,
    first_name: "Joe",
    last_name: "Smith",
    user: sharmi
    )
end
