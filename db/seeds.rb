# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Booking.destroy_all
Herd.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create!( email: "emarie1@gmail.com", password: '123456')
user2 = User.create!( email: "emarie2@gmail.com", password: '123456')

puts "Creating herds..."
chevrettes = { name: "Les Chevrettes", photo: "chevrettes.jpg", address: "7 rue blanche, Saint-Philibert", goat_number: 3, about: "Chevrettes joyeuses et proprettes!", user: user1   }
seguin =  { name: "Monsieur Seguin", photo: "seguin.jpg", address: "12 allée de la tonte, Arles",goat_number: 2, about: "Chèvres disciplinées, elles ne mangeront pas vos plates-bandes!", user: user1 }
noiraude =  { name: "La noiraude", photo: "noiraude.jpg", address: "12 chemin principal, Fley",goat_number: 1, about: "Chèvre de caractère mais efficace!", user: user2 }
ribambelle =  { name: "La Ribambelle", photo: "ribambelle.jpg",  address: "1 rue verte, Ergersheim",goat_number: 8, about: "Un gros troupeau, parfait pour les grands terrains!", user: user2 }

[ chevrettes, seguin, noiraude, ribambelle ].each do |attributes|
  herd = Herd.create!(attributes)
  puts "Created #{herd.name}"
end
puts "Finished!"
