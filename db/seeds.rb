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

office_2 = OfficeSpace.create!(name: "6722 Alize Masion", address: "Shnjuku, Tokyo", description: "The room was painted a bluish gray color from top to bottom, with a simple floral design border all of the way around. The ceiling of the room was the same color as the walls and the floor was made of dark brown stained wood paneling.", price: 60, owner: user1)

office_3 = OfficeSpace.create!(name: "310 East Pine St.", address: "Minato-Ku, Tokyo", description: "An upgraded private office with access to premium shared spaces and amenities. Includes your own meeting rooms, lounges, and executive offices dedicated to your team", price: 80, owner: user2)

office_4 = OfficeSpace.create!(name: "7C Roe Ave", address: "Shinagawa, Tokyo", description: "A standalone, private office in a location dedicated to your team (no shared spaces). Includes just the essentials with preconfigured layouts, and basic amenities.", price: 40, owner: user2)

office_5 = OfficeSpace.create!(name: "Allen Hall 014 Room", address: "Bunkyo, Tokyo", description: "Enclosed, lockable offices can accommodate teams of any size. Move-in ready, with desks, chairs, and filing cabinets.", price: 55, owner: user2)

office_6 = OfficeSpace.create!(name: "75 West Wim Blvd", address: "Akihabara, Tokyo", description: "Choose a flexible hot desk in an open space or a permanent dedicated desk in a shared office. You’ll get access to premium amenities with a guaranteed spot to plug in and get to work.", price: 55, owner: user2)


reservation1 = Reservation.create!(user: user1, office_space: office_1, check_in: Date.parse("Dec 8 2018"), check_out: Date.parse("Dec 8 2019"))
reservation2 = Reservation.create!(user: user2, office_space: office_2, check_in: Date.parse("Dec 10 2018"), check_out: Date.parse("Dec 8 2019"))
