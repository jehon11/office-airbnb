
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


puts "creating offices"

office_1 = OfficeSpace.create!(name: "Prudential Plaza 10F", address: "Tokyo Tower", description: "Host 8 people group meeting and jam sessions. Space has the power to unlock potential — in our teams and in ourselves. Our workspaces blend intentional design, warm hospitality, and flexibility so you and your team can do your best work.", price: 2400, owner: user1)
url = "https://i.pinimg.com/originals/88/6e/25/886e25879db8d6db6e6a8a2301d21393.jpg"
office_1.remote_photo_url = url
office_1.save!


office_2 = OfficeSpace.create!(name: "6722 Alize Masion", address: "Tokyo skytree", description: "The room was painted a bluish gray color from top to bottom, with a simple floral design border all of the way around. The ceiling of the room was the same color as the walls and the floor was made of dark brown stained wood paneling.", price: 60, owner: user1, )
url = "https://static.boredpanda.com/blog/wp-content/uploads/2014/01/amazing-creative-workspaces-office-spaces-2-1.jpg"
office_2.remote_photo_url = url
office_2.save!

office_3 = OfficeSpace.create!(name: "310 East Pine St.", address: "Shibuya station", description: "An upgraded private office with access to premium shared spaces and amenities. Includes your own meeting rooms, lounges, and executive offices dedicated to your team", price: 80, owner: user2)
url = "https://media.glassdoor.com/l/93/3b/1c/e0/heineken-usa-headquarters-are-based-in-white-plains-ny-beautiful.jpg"
office_3.remote_photo_url = url
office_3.save!

office_4 = OfficeSpace.create!(name: "7C Roe Ave", address: "Meguro-ku", description: "A standalone, private office in a location dedicated to your team (no shared spaces). Includes just the essentials with preconfigured layouts, and basic amenities.", price: 40, owner: user2)
url = "https://images.pexels.com/photos/667838/pexels-photo-667838.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
office_4.remote_photo_url = url
office_4.save!

office_5 = OfficeSpace.create!(name: "Allen Hall 014 Room", address: "Akihabara", description: "Enclosed, lockable offices can accommodate teams of any size. Move-in ready, with desks, chairs, and filing cabinets.", price: 55, owner: user2)
url = "https://static.boredpanda.com/blog/wp-content/uploads/2014/01/amazing-creative-workspaces-office-spaces-14-1.jpg"
office_5.remote_photo_url = url
office_5.save!

office_6 = OfficeSpace.create!(name: "75 West Wim Blvd", address: "Shinagawa", description: "Choose a flexible hot desk in an open space or a permanent dedicated desk in a shared office. You’ll get access to premium amenities with a guaranteed spot to plug in and get to work.", price: 55, owner: user2)
url = "https://static.geo.de/bilder/5b/43/37325/facebook_image/339b53cdefed89df2d4c3cb86840c9a7.jpg"
office_6.remote_photo_url = url
office_6.save!




office_7 = OfficeSpace.create!(name: "Tokyu Yotsuya", address: "Tokyu Stay Yotsuya", description: "Choose a flexible hot desk in an open space or a permanent dedicated desk in a shared office. You’ll get access to premium amenities with a guaranteed spot to plug in and get to work.", price: 55, owner: user2)
url = "https://i.pinimg.com/originals/be/19/35/be1935d39093e3019f49ef30e68b5283.jpg"
office_7.remote_photo_url = url
office_7.save!

office_8 = OfficeSpace.create!(name: "Metropolitan Plaza", address: "Ikebukuro station", description: "this coworking space in the Metropolitan Plaza Building captures the buzzing energy of the surrounding city—and gives businesses the space and support they need to flourish. An entire level in this modern high-rise is converted office space.", price: 55, owner: user2)
url = "https://slasharchitects.com/img/01-elissastampa/slasharchitects-Elissa-Stampa-Fashion-Design-Office-23-transparency-runway.jpg"
office_8.remote_photo_url = url
office_8.save!

office_9 = OfficeSpace.create!(name: "Shiroyama Trust Tower", address: "Shiroyama Trust Tower", description: "The beating heart of Japan’s economy, Tokyo is a site of extreme innovation and success. WeWork’s coworking office in Shiroyama Trust Tower puts you right at the center of that potential. Three floors of dedicated WeWork space and intentional design keeps your team engaged and inspired throughout the workday.", price: 55, owner: user2)
url = "http://cdn.home-designing.com/wp-content/uploads/2010/07/adobe-office.jpg"
office_9.remote_photo_url = url
office_9.save!

office_10 = OfficeSpace.create!(name: "Tokyo Square Garden", address: "Tokyo Square Garden", description: "If you’re looking for coworking space in Tokyo Square Garden that connects you with vibrant network of professionals and entrepreneurs, WeWork is the ticket. Soaring above the 14th floor of a modern building complex, our space boasts beautifully designed common areas, unique conference rooms, sleek private offices, an arcade room, and an outdoor terrace.", price: 55, owner: user2)
url = "https://images.adsttc.com/media/images/5426/0555/c07a/80c9/ea00/015e/large_jpg/PORTADA_3a.jpg?1411777870"
office_10.remote_photo_url = url
office_10.save!



office_11 = OfficeSpace.create!(name: "Iceberg", address: "Iceberg, Tokyo", description: "A fierce sense of style and an entrepreneurial spirit are trademarks of the infamous Shibuya district in Tokyo. Home to WeWork’s distinctive Jingumae shared office space, the area holds undeniable appeal for growing businesses and independent entrepreneurs alike. Throughout each floor of this metropolitan location, members can enjoy inviting lounges, soundproofed phone rooms, and private offices. Extra high ceilings keep the space open and airy, and our in-house cafe will help you stay energized throughout the day. In close proximity to public transportation and surrounded by a wide variety of eateries, retail shops, and entertainment options, this vibrant neighborhood offers something for everyone. Join some of Tokyo’s top professionals in our vibrant Shibuya coworking space.", price: 55, owner: user2)
url = "http://miamibeachfootsurgery.com/wp-content/uploads/2018/05/merveilleux-design-office.jpg"
office_11.remote_photo_url = url
office_11.save!

office_12 = OfficeSpace.create!(name: "Shimbashi", address: "Shimbashi station", description: "A worker’s paradise, Shimbashi is the perfect place to lay down roots for your thriving business. A neighborhood known for its work hard, play hard ethic, WeWork puts a new spin on this area’s industrious vibe with nine floors of refreshingly designed office space. Here, you’ll be at the center of it all with the major global business districts of Shiodome, Kamiyacho, and Toranomon nearby—putting you in close proximity to both local and foreign companies.", price: 55, owner: user2)
url = "https://images.fastcompany.net/image/upload/w_1280,f_auto,q_auto,fl_lossy/fc/3054804-poster-p-1-8-top-office-design-trends-for-2016.jpg"
office_12.remote_photo_url = url
office_12.save!


puts "creating reviews"

review_1 = Review.create!(user: user1, office_space: office_1, rating: 4, comment: "The office was well maintained and had all that I was promised. The space was adequate as expected from the description and most importantly there was peace and quite that I wanted." )
review_2 = Review.create!(user: user2, office_space: office_1, rating: 5, comment: "very nice : the most pleasant office i have ever seen" )

review_3 = Review.create!(user: user1, office_space: office_2, rating: 5, comment: "The staff were very helpful. When I complained that the office to which we had been initially assigned were noise, they moved me at once. meal was good too." )
review_4 = Review.create!(user: user2, office_space: office_2, rating: 4, comment: "Great time at this office, good size apartment, perfect location close to skytrain, supermarket and shopping mall." )

review_4 = Review.create!(user: user2, office_space: office_3, rating: 4, comment: "Good views, office windows excellent brilliant views. cafe was good too. Everything that we needed." )
review_5 = Review.create!(user: user1, office_space: office_3, rating: 4, comment: "Great size office. Nice and clean and tidy. Terrific value. Good location." )

review_6 = Review.create!(user: user1, office_space: office_4, rating: 5, comment: "Great  office. Wonderful and tidy. good colleagues. Good location." )
review_7 = Review.create!(user: user2, office_space: office_4, rating: 3, comment: "7C Roe Ave propose several wonderful offices in Japan. It is mostly used by local business travelers. Everything is superb clean." )

review_8 = Review.create!(user: user2, office_space: office_5, rating: 4, comment: "Allen Hall 104 Roe Ave propose several wonderful offices in Japan. It is mostly used by local business travelers. Everything is superb clean." )

puts "creating reservations"


reservation1 = Reservation.create!(user: user1, office_space: office_1, check_in: Date.parse("Dec 8 2018"), check_out: Date.parse("Dec 8 2019"), usernumber: 10)
reservation2 = Reservation.create!(user: user2, office_space: office_2, check_in: Date.parse("Dec 10 2018"), check_out: Date.parse("Dec 8 2019"), usernumber: 1)
