# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require "open-uri"
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Booking.destroy_all
Herd.destroy_all
User.destroy_all


# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

# file1 = URI.open(url1)
url1 = URI.open('https://res.cloudinary.com/dlqdcxt4l/image/upload/v1590062621/mpxun238yemawtodeue2.jpg')
url2 = URI.open('https://res.cloudinary.com/dlqdcxt4l/image/upload/v1590062592/eov7f1hrjsen20bnqjuc.jpg')
url3 = URI.open('https://res.cloudinary.com/dlqdcxt4l/image/upload/v1590062565/npaxucptfhfpevvhzgbg.jpg')
url4 = URI.open('https://res.cloudinary.com/dlqdcxt4l/image/upload/v1590062545/gekedayyqklthauzsrqv.jpg')
url5 = URI.open('https://res.cloudinary.com/dlqdcxt4l/image/upload/v1590071438/htj5vkpcskmhggmcorvn.jpg')
url6 = URI.open('https://res.cloudinary.com/dlqdcxt4l/image/upload/v1590071419/nwgusaefa1khqtwoqumf.jpg')

puts "Creating users..."
user1 = User.create!( email: "emarie1@gmail.com", password: '123456')
user2 = User.create!( email: "emarie2@gmail.com", password: '123456')
user3 = User.create!( email: "yoann@gmail.com", password: 'azerty')
user4 = User.create!( email: "fred@gmail.com", password: 'azerty')

puts "Creating herds..."
chevrettes = { name: "Les Chevrettes", address: "Saint-Philibert", goat_number: 2, about: "Chevrettes joyeuses et proprettes!", user: user1, price: 20    }
seguin =  { name: "Monsieur Seguin", address: "Arles",goat_number: 5, about: "Chèvres disciplinées, elles ne mangeront pas vos plates-bandes!", user: user1, price: 20  }
noiraude =  { name: "La noiraude", address: "Fley",goat_number: 1, about: "Chèvre de caractère mais efficace!", user: user2, price: 20  }
ribambelle =  { name: "La Ribambelle",  address: "Nancy",goat_number: 3, about: "Un gros troupeau, parfait pour les grands terrains!", user: user2, price: 20  }

ciflorette = { name: "Ciflorette", address: "Carnac", goat_number: 6, about: "L'amie des enfants! Aime se faire caresser après la tonte :)", user: user3, price: 20  }
louperac = { name: "Louperac", address: "La trinité", goat_number: 2, about: "Joli troupeau docile et très soigneux de tous vos végétaux", user: user3, price: 20  }


herd1 = Herd.create!(chevrettes)
puts "Created #{herd1.name}"
herd2 = Herd.create!(seguin)
puts "Created #{herd2.name}"
herd3 = Herd.create!(noiraude)
puts "Created #{herd3.name}"
herd4 = Herd.create!(ribambelle)
puts "Created #{herd4.name}"

herd5 = Herd.create!(ciflorette)
puts "Created #{herd5.name}"
herd6 = Herd.create!(louperac)
puts "Created #{herd6.name}"

herd1.photo.attach(io: url1, filename: 'Les Chevrettes.png', content_type: 'image/png')
herd2.photo.attach(io: url2, filename: 'Monsieur Seguin.png', content_type: 'image/png')
herd3.photo.attach(io: url3, filename: 'La noiraude.png', content_type: 'image/png')
herd4.photo.attach(io: url4, filename: 'La Ribambelle.png', content_type: 'image/png')

herd5.photo.attach(io: url5, filename: 'ciflorette.png', content_type: 'image/png')
herd6.photo.attach(io: url6, filename: 'louperac.png', content_type: 'image/png')

puts "Finished!"
