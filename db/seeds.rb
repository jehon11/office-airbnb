# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
OfficeSpace.destroy_all

User.destroy_all

user = User.create!(email: "hi@email.com", password: "123456")
user2 = User.create!(email: "hello@email.com", password: "123456")

office = OfficeSpace.create!(name: "cool office", address: "tokyo", description: "amazing space", price: 10000, owner: user)

reservation = Reservation.create!(user: user, office_space: office, check_in: Date.parse("Dec 8 2018"), check_out: Date.parse("Dec 8 2019"))
reservation2 = Reservation.create!(user: user2, office_space: office, check_in: Date.parse("Dec 10 2018"), check_out: Date.parse("Dec 8 2019"))
