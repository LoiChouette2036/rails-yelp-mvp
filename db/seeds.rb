# Clear existing restaurants to avoid duplicates when seeding multiple times
Restaurant.destroy_all

# Seed the database with at least 5 restaurants
restaurants = [
  { name: "Golden Dragon", address: "123 Dragon Street, Chinatown", phone_number: "123-456-7890", category: "chinese" },
  { name: "La Bella Italia", address: "456 Pasta Avenue, Little Italy", phone_number: "234-567-8901", category: "italian" },
  { name: "Tokyo Sushi", address: "789 Sushi Road, Tokyo Town", phone_number: "345-678-9012", category: "japanese" },
  { name: "Le Gourmet", address: "12 Champs-Elysees, Paris", phone_number: "456-789-0123", category: "french" },
  { name: "Belgian Waffles", address: "34 Brussels Lane, Waffle City", phone_number: "567-890-1234", category: "belgian" }
]

# Create the restaurants
restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Seeded #{Restaurant.count} restaurants!"