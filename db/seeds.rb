# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
Review.destroy_all
OfficeSpace.destroy_all

User.destroy_all

user1 = User.create!(email: "hi@email.com", password: "123456")
user2 = User.create!(email: "hello@email.com", password: "123456")

office_1 = OfficeSpace.create!(name: "Prudential Plaza 10F", address: "Chioda, Tokyo", description: "Host 8 people group meeting and jam sessions. Space has the power to unlock potential — in our teams and in ourselves. Our workspaces blend intentional design, warm hospitality, and flexibility so you and your team can do your best work.
", price: 2400, owner: user1)
office_2 = OfficeSpace.create!(name: "Meguro free space", address: "Meguro-Ku", description: "cozy office in central Tokyo", price: 5000, owner: user2)



reservation1 = Reservation.create!(user: user1, office_space: office_1, check_in: Date.parse("Dec 8 2018"), check_out: Date.parse("Dec 8 2019"))
reservation2 = Reservation.create!(user: user2, office_space: office_2, check_in: Date.parse("Dec 10 2018"), check_out: Date.parse("Dec 8 2019"))
