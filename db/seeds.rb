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
    "description": "Luxurious and elegant, offering top-notch amenities for a comfortable stay."
  },
  {
    "title": "Tranquil Apartment in Craftville",
    "category": "apartment",
    "price": 101,
    "surface": 45,
    "address": "98 Creeper Way, Craftville",
    "description": "A hidden gem, offering tranquility and privacy for a restful stay."
  },
  {
    "title": "Stylish Castle in Fortress City",
    "category": "castle",
    "price": 382,
    "surface": 369,
    "address": "42 Gold Street, Fortress City",
    "description": "A sleek and stylish abode, perfect for those who enjoy the finer things."
  },
  {
    "title": "Minimalist Castle in Skyland",
    "category": "castle",
    "price": 446,
    "surface": 367,
    "address": "33 Obsidian Path, Skyland",
    "description": "A minimalist's dream, with sleek lines and a tranquil atmosphere."
  },
  {
    "title": "Charming Apartment in Fortress City",
    "category": "apartment",
    "price": 135,
    "surface": 44,
    "address": "25 Zombie Lane, Fortress City",
    "description": "Rustic charm and modern facilities combine in this unique countryside home."
  },
  {
    "title": "Quaint House in Redstonia",
    "category": "house",
    "price": 252,
    "surface": 174,
    "address": "54 Creeper Way, Redstonia",
    "description": "Quaint and delightful, ideal for those who love a touch of simplicity and nature."
  },
  {
    "title": "Magical House in Skyland",
    "category": "house",
    "price": 278,
    "surface": 129,
    "address": "90 Lapis Road, Skyland",
    "description": "A magical experience in a whimsical setting, perfect for fantasy lovers."
  },
  {
    "title": "Architectural Marvel in Golem Grove",
    "category": "house",
    "price": 237,
    "surface": 171,
    "address": "69 Diamond Blvd, Golem Grove",
    "description": "An architectural marvel, blending modern design with traditional Minecraft elements."
  },
  {
    "title": "Artistic Castle in Block City",
    "category": "castle",
    "price": 317,
    "surface": 428,
    "address": "72 Creeper Way, Block City",
    "description": "An artist's retreat, inspiring creativity with its vibrant colors and open spaces."
  },
  {
    "title": "Cozy Castle in Skyland",
    "category": "castle",
    "price": 471,
    "surface": 296,
    "address": "23 Iron Lane, Skyland",
    "description": "A cozy cottage with a warm, welcoming vibe and a beautiful porch."
  },
  {
    "title": "Peaceful Apartment in Minetown",
    "category": "apartment",
    "price": 110,
    "surface": 76,
    "address": "98 Lapis Road, Minetown",
    "description": "A peaceful haven with a zen garden and soothing interiors."
  },
  {
    "title": "Cozy House in Craftville",
    "category": "house",
    "price": 189,
    "surface": 143,
    "address": "15 Enderman St, Craftville",
    "description": "Cozy and rustic, this home offers a fireplace and a beautiful garden view."
  },
  {
    "title": "Historic Apartment in Netherville",
    "category": "apartment",
    "price": 72,
    "surface": 39,
    "address": "8 Skeleton Road, Netherville",
    "description": "Historic charm meets modern luxury in this beautifully restored property."
  },
  {
    "title": "Spectacular Castle in Pixelton",
    "category": "castle",
    "price": 309,
    "surface": 415,
    "address": "53 Redstone Ave, Pixelton",
    "description": "Spectacular views from every room, crafted for a memorable experience."
  },
  {
    "title": "Modern Apartment in Fortress City",
    "category": "apartment",
    "price": 79,
    "surface": 59,
    "address": "24 Enderman St, Fortress City",
    "description": "Modern, spacious, and filled with light, perfect for a relaxing stay."
  },
  {
    "title": "Family-Friendly House in Skyland",
    "category": "house",
    "price": 229,
    "surface": 159,
    "address": "98 Skeleton Road, Skyland",
    "description": "Family-friendly and spacious, with a playground and a large kitchen."
  },
  {
    "title": "Opulent Apartment in Block City",
    "category": "apartment",
    "price": 93,
    "surface": 44,
    "address": "10 Skeleton Road, Block City",
    "description": "Opulent and grand, this mansion exudes luxury in every detail."
  },
  {
    "title": "High-Tech Apartment in Redstonia",
    "category": "apartment",
    "price": 113,
    "surface": 76,
    "address": "39 Diamond Blvd, Redstonia",
    "description": "A high-tech smart home, offering the latest in comfort and convenience."
  },
  {
    "title": "Adventurer's Apartment in Enderburg",
    "category": "apartment",
    "price": 144,
    "surface": 46,
    "address": "71 Obsidian Path, Enderburg",
    "description": "An adventurer's base, close to the best exploratory spots in Minecraft."
  },
  {
    "title": "Urban Oasis Apartment in Enderburg",
    "category": "apartment",
    "price": 90,
    "surface": 57,
    "address": "26 Enderman St, Enderburg",
    "description": "An urban oasis with a rooftop terrace and stunning city skyline views."
  },
  {
    "title": "Charming Castle in Minetown",
    "category": "castle",
    "price": 348,
    "surface": 406,
    "address": "50 Creeper Way, Minetown",
    "description": "A charming retreat nestled in a peaceful area, with easy access to adventures."
  },
  {
    "title": "Eco-Friendly House in Craftville",
    "category": "house",
    "price": 175,
    "surface": 110,
    "address": "56 Diamond Blvd, Craftville",
    "description": "Eco-friendly design, with solar panels and a vegetable garden."
  },
  {
    "title": "Vintage Castle in Fortress City",
    "category": "castle",
    "price": 398,
    "surface": 274,
    "address": "96 Enderman St, Fortress City",
    "description": "Vintage charm with modern amenities, set in a picturesque location."
  },
  {
    "title": "Serene Apartment in Redstonia",
    "category": "apartment",
    "price": 107,
    "surface": 85,
    "address": "28 Lapis Road, Redstonia",
    "description": "A serene getaway with a private balcony overlooking the pixelated landscape."
  },
  {
    "title": "Waterfront Apartment in Block City",
    "category": "apartment",
    "price": 96,
    "surface": 87,
    "address": "60 Redstone Ave, Block City",
    "description": "Breathtaking waterfront property with a private dock and outdoor activities."
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
    file = URI.open("https://minecraft.fr/wp-content/uploads/2023/04/les-20-etapes-cles-pour-reussir-dans-un-nouveau-monde-minecraft-le-guide-ultime.jpg")
    build.photos.attach(io: file, filename: "test.png", content_type: "image/jpg")
    build.save!
    index += 1
  end
puts "!!! FINISH builds creation !!!"

end
puts "!!! FINISH users creation !!!"

puts " !!! START creating 10 past bookings...!!! "
10.times do
  booking = Booking.new(
    user_id: (1..5).to_a.sample,
    build_id: (1..25).to_a.sample,
    start_date: Faker::Date.between(from: '2010-01-01', to: '2022-12-31'),
    status: (0..2).to_a.sample
  )
  booking.save!
end
puts "!!! FINISH bookings creation !!!"
