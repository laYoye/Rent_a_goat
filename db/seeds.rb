# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Herd.destroy_all

puts "Creating herds..."
chevrettes = { name: "Les Chevrettes", photo: "chevrettes.jpeg", address: "7 rue blanche, Saint-Philibert", goat_number: 3, about: "Chevrettes joyeuses et proprettes!"  }
seguin =  { name: "Monsieur Seguin", photo: "seguin.jpeg", address: "12 allée de la tonte, Arles",goat_number: 2, about: "Chèvres disciplinées, elles ne mangeront pas vos plates-bandes!" }
noiraude =  { name: "La noiraude", photo: "noiraude.jpeg", address: "12 chemin principal, Fley",goat_number: 1, about: "Chèvre de caractère mais efficace!" }
ribambelle =  { name: "La Ribambelle", photo: "ribambelle.jpeg",  address: "1 rue verte, Ergersheim",goat_number: 8, about: "Un gros troupeau, parfait pour les grands terrains!" }

[ chevrettes, seguin, noiraude, ribambelle ].each do |attributes|
  herd = Herd.create!(attributes)
  puts "Created #{herd.name}"
end
puts "Finished!"
