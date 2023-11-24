# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# require "faker"

# enum status: [ :active, :validated, :cancelled ]

builds_list = [
  {
    "title": "Luxurious Apartment in Enderburg",
    "category": "apartment",
    "price": 83,
    "surface": 69,
    "address": "24 Skeleton Road, Enderburg",
    "description": "Luxurious and elegant, offering top-notch amenities for a comfortable stay.",
    "url": "https://image.noelshack.com/fichiers/2014/33/1407949565-minecraft-wwalterr-thai-temple-miniature.jpg"
  },
  {
    "title": "Tranquil Apartment in Craftville",
    "category": "apartment",
    "price": 101,
    "surface": 45,
    "address": "98 Creeper Way, Craftville",
    "description": "A hidden gem, offering tranquility and privacy for a restful stay.",
    "url": "https://png.pngtree.com/thumb_back/fw800/background/20230521/pngtree-minecraft-house-designs-minecraft-building-designs-image_2671761.jpg"
  },
  {
    "title": "Stylish Castle in Fortress City",
    "category": "castle",
    "price": 382,
    "surface": 369,
    "address": "42 Gold Street, Fortress City",
    "description": "A sleek and stylish abode, perfect for those who enjoy the finer things.",
    "url": "https://png.pngtree.com/thumb_back/fw800/background/20230615/pngtree-minecraft-house-built-on-the-water-in-minecraft-image_2925309.jpg"
  },
  {
    "title": "Minimalist Castle in Skyland",
    "category": "castle",
    "price": 446,
    "surface": 367,
    "address": "33 Obsidian Path, Skyland",
    "description": "A minimalist's dream, with sleek lines and a tranquil atmosphere.",
    "url": "https://png.pngtree.com/background/20230522/original/pngtree-minecraft-house-made-by-minecraft-building-picture-image_2695389.jpg"
  },
  {
    "title": "Charming Apartment in Fortress City",
    "category": "apartment",
    "price": 135,
    "surface": 44,
    "address": "25 Zombie Lane, Fortress City",
    "description": "Rustic charm and modern facilities combine in this unique countryside home.",
    "url": "https://png.pngtree.com/background/20230616/original/pngtree-an-old-style-house-in-minecraft-picture-image_3635119.jpg"
  },
  {
    "title": "Quaint House in Redstonia",
    "category": "house",
    "price": 252,
    "surface": 174,
    "address": "54 Creeper Way, Redstonia",
    "description": "Quaint and delightful, ideal for those who love a touch of simplicity and nature.",
    "url": "https://assets2.rockpapershotgun.com/minecraft-house-ideas-farmhouse-2.jpg/BROK/resize/690%3E/format/jpg/quality/80/minecraft-house-ideas-farmhouse-2.jpg"
  },
  {
    "title": "Magical House in Skyland",
    "category": "house",
    "price": 278,
    "surface": 129,
    "address": "90 Lapis Road, Skyland",
    "description": "A magical experience in a whimsical setting, perfect for fantasy lovers.",
    "url": "https://images.wondershare.com/filmora/article-images/large-spruce-survival-mansion-poster.jpg"
  },
  {
    "title": "Architectural Marvel in Golem Grove",
    "category": "house",
    "price": 237,
    "surface": 171,
    "address": "69 Diamond Blvd, Golem Grove",
    "description": "An architectural marvel, blending modern design with traditional Minecraft elements.",
    "url": "https://png.pngtree.com/background/20230616/original/pngtree-minecraft-structure-built-on-top-of-a-river-picture-image_3628191.jpg"
  },
  {
    "title": "Artistic Castle in Block City",
    "category": "castle",
    "price": 317,
    "surface": 428,
    "address": "72 Creeper Way, Block City",
    "description": "An artist's retreat, inspiring creativity with its vibrant colors and open spaces.",
    "url": "https://png.pngtree.com/background/20230528/original/pngtree-minecraft-town-with-ruins-on-top-of-it-picture-image_2773580.jpg"
  },
  {
    "title": "Cozy Castle in Skyland",
    "category": "castle",
    "price": 471,
    "surface": 296,
    "address": "23 Iron Lane, Skyland",
    "description": "A cozy cottage with a warm, welcoming vibe and a beautiful porch.",
    "url": "https://pbs.twimg.com/media/FOxf2m1WUAMOlyE.jpg:large"
  },
  {
    "title": "Peaceful Apartment in Minetown",
    "category": "apartment",
    "price": 110,
    "surface": 76,
    "address": "98 Lapis Road, Minetown",
    "description": "A peaceful haven with a zen garden and soothing interiors.",
    "url": "https://png.pngtree.com/background/20230519/original/pngtree-majestic-building-is-on-the-ground-in-a-minecraft-house-picture-image_2650329.jpg"
  },
  {
    "title": "Cozy House in Craftville",
    "category": "house",
    "price": 189,
    "surface": 143,
    "address": "15 Enderman St, Craftville",
    "description": "Cozy and rustic, this home offers a fireplace and a beautiful garden view.",
    "url": "https://cs2.worldofmods.eu/screenshots/0ded8/2015-09/original/045abce3fbd6ba05e6c581010744dff4e626b055/172245-javaw-2015-09-19-09-01-32-15.jpg"
  },
  {
    "title": "Historic Apartment in Netherville",
    "category": "apartment",
    "price": 72,
    "surface": 39,
    "address": "8 Skeleton Road, Netherville",
    "description": "Historic charm meets modern luxury in this beautifully restored property.",
    "url": "https://minecraftch.ru/uploads/posts/2020-04/1586876113_scottish-mansion-1.png"
  },
  {
    "title": "Spectacular Castle in Pixelton",
    "category": "castle",
    "price": 309,
    "surface": 415,
    "address": "53 Redstone Ave, Pixelton",
    "description": "Spectacular views from every room, crafted for a memorable experience.",
    "url": "https://minecraft-inside.ru/uploads/files/2022-04/thumb/2022-04-16_10.27.47.png"
  },
  {
    "title": "Modern Apartment in Fortress City",
    "category": "apartment",
    "price": 79,
    "surface": 59,
    "address": "24 Enderman St, Fortress City",
    "description": "Modern, spacious, and filled with light, perfect for a relaxing stay.",
    "url": "https://itbusiness.com.ua/wp-content/uploads/2021/01/luchshee-vozrozhdenie-vyzhivaniya-v-minecraft-marketplace.jpg"
  },
  {
    "title": "Family-Friendly House in Skyland",
    "category": "house",
    "price": 229,
    "surface": 159,
    "address": "98 Skeleton Road, Skyland",
    "description": "Family-friendly and spacious, with a playground and a large kitchen.",
    "url": "https://i.redd.it/gce3wvdz2rf71.jpg"
  },
  {
    "title": "Opulent Apartment in Block City",
    "category": "apartment",
    "price": 93,
    "surface": 44,
    "address": "10 Skeleton Road, Block City",
    "description": "Opulent and grand, this mansion exudes luxury in every detail.",
    "url": "https://www.minecraft-france.fr/wp-content/uploads/2020/11/2020-11-22_12.50.26.png"
  },
  {
    "title": "High-Tech Apartment in Redstonia",
    "category": "apartment",
    "price": 113,
    "surface": 76,
    "address": "39 Diamond Blvd, Redstonia",
    "description": "A high-tech smart home, offering the latest in comfort and convenience.",
    "url": "https://fr-minecraft.net/upload/structures/images/frm_struct_SNGD_2017-01-03-22-30-22.png"
  },
  {
    "title": "Adventurer's Apartment in Enderburg",
    "category": "apartment",
    "price": 144,
    "surface": 46,
    "address": "71 Obsidian Path, Enderburg",
    "description": "An adventurer's base, close to the best exploratory spots in Minecraft.",
    "url": "https://images.wondershare.com/filmora/article-images/small-medieval-house-poster.jpg"
  },
  {
    "title": "Urban Oasis Apartment in Enderburg",
    "category": "apartment",
    "price": 90,
    "surface": 57,
    "address": "26 Enderman St, Enderburg",
    "description": "An urban oasis with a rooftop terrace and stunning city skyline views.",
    "url": "https://i.pinimg.com/originals/81/c0/10/81c010334cf949ccd420b457dd05a1ec.png"
  },
  {
    "title": "Charming Castle in Minetown",
    "category": "castle",
    "price": 348,
    "surface": 406,
    "address": "50 Creeper Way, Minetown",
    "description": "A charming retreat nestled in a peaceful area, with easy access to adventures.",
    "url": "https://mobile-img.lpcdn.ca/lpca/924x/r3996/ff0f7177-9949-11ea-b33c-02fe89184577.jpg"
  },
  {
    "title": "Eco-Friendly House in Craftville",
    "category": "house",
    "price": 175,
    "surface": 110,
    "address": "56 Diamond Blvd, Craftville",
    "description": "Eco-friendly design, with solar panels and a vegetable garden.",
    "url": "https://astucejeuxps4.com/wp-content/uploads/2022/06/Meilleurs-plans-de-chateau-Minecraft-Guides-de-jeu-professionnels.jpg"
  },
  {
    "title": "Vintage Castle in Fortress City",
    "category": "castle",
    "price": 398,
    "surface": 274,
    "address": "96 Enderman St, Fortress City",
    "description": "Vintage charm with modern amenities, set in a picturesque location.",
    "url": "https://astucejeuxps4.com/wp-content/uploads/2022/06/1654614169_830_Meilleurs-plans-de-chateau-Minecraft-Guides-de-jeu-professionnels.jpg"
  },
  {
    "title": "Serene Apartment in Redstonia",
    "category": "apartment",
    "price": 107,
    "surface": 85,
    "address": "28 Lapis Road, Redstonia",
    "description": "A serene getaway with a private balcony overlooking the pixelated landscape.",
    "url": "https://assetsio.reedpopcdn.com/minecraft-disney-castle.jpg"
  },
  {
    "title": "Waterfront Apartment in Block City",
    "category": "apartment",
    "price": 96,
    "surface": 87,
    "address": "60 Redstone Ave, Block City",
    "description": "Breathtaking waterfront property with a private dock and outdoor activities.",
    "url": "https://cdn.mos.cms.futurecdn.net/qAkSrfvdpWmRNiFWw4CC9T.jpg"
  }
]
index = 0
Booking.destroy_all
Build.destroy_all
User.destroy_all
puts " !!! START creating 10 users in users' database...!!! "
5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: "azerty"
  )
  user.save!
  puts " !!! START creating builds in builds' database...!!! "
  5.times do
    build = Build.new(
      user_id: user[:id],
      address: builds_list[index][:address],
      surface: builds_list[index][:surface],
      title: builds_list[index][:title],
      description: builds_list[index][:description],
      category: builds_list[index][:category],
      price: builds_list[index][:price]
    )
    file = URI.open(builds_list[index][:url])
c    build.photos.attach(io: file, filename: "test.png", content_type: "image/jpg")
    build.save!
    index += 1
  end
puts "!!! FINISH builds creation !!!"

end
puts "!!! FINISH users creation !!!"

puts " !!! START creating 10 past bookings...!!! "
10.times do
  date = Faker::Date.between(from: '2010-01-01', to: '2022-12-31')
  booking = Booking.new(
    user_id: (1..5).to_a.sample,
    build_id: (1..25).to_a.sample,
    start_date: date,
    end_date: date + (1..4).to_a.sample,
    status: (0..2).to_a.sample
  )
  booking.save!
end
puts "!!! FINISH bookings creation !!!"
