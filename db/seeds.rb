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
url = "https://i.pinimg.com/originals/88/6e/25/886e25879db8d6db6e6a8a2301d21393.jpg"
office_1.remote_photo_url = url
office_1.save


office_2 = OfficeSpace.create!(name: "6722 Alize Masion", address: "Shnjuku, Tokyo", description: "The room was painted a bluish gray color from top to bottom, with a simple floral design border all of the way around. The ceiling of the room was the same color as the walls and the floor was made of dark brown stained wood paneling.", price: 60, owner: user1, )
url = "https://static.boredpanda.com/blog/wp-content/uploads/2014/01/amazing-creative-workspaces-office-spaces-2-1.jpg"
office_2.remote_photo_url = url
office_2.save

office_3 = OfficeSpace.create!(name: "310 East Pine St.", address: "Minato-Ku, Tokyo", description: "An upgraded private office with access to premium shared spaces and amenities. Includes your own meeting rooms, lounges, and executive offices dedicated to your team", price: 80, owner: user2)
url = "https://media.glassdoor.com/l/93/3b/1c/e0/heineken-usa-headquarters-are-based-in-white-plains-ny-beautiful.jpg"
office_3.remote_photo_url = url
office_3.save

office_4 = OfficeSpace.create!(name: "7C Roe Ave", address: "Shinagawa, Tokyo", description: "A standalone, private office in a location dedicated to your team (no shared spaces). Includes just the essentials with preconfigured layouts, and basic amenities.", price: 40, owner: user2)
url = "https://i.pinimg.com/originals/cd/9c/91/cd9c91432cb61d93fb829a4d14b94d26.jpg"
office_4.remote_photo_url = url
office_4.save

office_5 = OfficeSpace.create!(name: "Allen Hall 014 Room", address: "Bunkyo, Tokyo", description: "Enclosed, lockable offices can accommodate teams of any size. Move-in ready, with desks, chairs, and filing cabinets.", price: 55, owner: user2)
url = "https://static.boredpanda.com/blog/wp-content/uploads/2014/01/amazing-creative-workspaces-office-spaces-14-1.jpg"
office_5.remote_photo_url = url
office_5.save

office_6 = OfficeSpace.create!(name: "75 West Wim Blvd", address: "Akihabara, Tokyo", description: "Choose a flexible hot desk in an open space or a permanent dedicated desk in a shared office. You’ll get access to premium amenities with a guaranteed spot to plug in and get to work.", price: 55, owner: user2)
url = "https://static.geo.de/bilder/5b/43/37325/facebook_image/339b53cdefed89df2d4c3cb86840c9a7.jpg"
office_6.remote_photo_url = url
office_6.save

review_1 = Review.create!(user: user1, office_space: office_1, rating: 4, comment: "The office was well maintained and had all that I was promised. The space was adequate as expected from the description and most importantly there was peace and quite that I wanted." )
review_2 = Review.create!(user: user2, office_space: office_1, rating: 5, comment: "very nice : the most pleasant office i have ever seen" )

review_3 = Review.create!(user: user1, office_space: office_2, rating: 5, comment: "The staff were very helpful. When I complained that the office to which we had been initially assigned were noise, they moved me at once. meal was good too." )
review_4 = Review.create!(user: user2, office_space: office_2, rating: 4, comment: "Great time at this office, good size apartment, perfect location close to skytrain, supermarket and shopping mall." )

review_4 = Review.create!(user: user2, office_space: office_3, rating: 4, comment: "Good views, office windows excellent brilliant views. cafe was good too. Everything that we needed." )
review_5 = Review.create!(user: user1, office_space: office_3, rating: 4, comment: "Great size office. Nice and clean and tidy. Terrific value. Good location." )

review_6 = Review.create!(user: user1, office_space: office_4, rating: 5, comment: "Great  office. Wonderful and tidy. good colleagues. Good location." )



reservation1 = Reservation.create!(user: user1, office_space: office_1, check_in: Date.parse("Dec 8 2018"), check_out: Date.parse("Dec 8 2019"), usernumber: 10)
reservation2 = Reservation.create!(user: user2, office_space: office_2, check_in: Date.parse("Dec 10 2018"), check_out: Date.parse("Dec 8 2019"), usernumber: 20)
