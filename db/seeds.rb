# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Faker::Config.locale = :fr


#Cities
10.times do
  city_and_zip = Faker::Address.full_address.split(', ').last
  zip = city_and_zip.split(' ').first
  city_name = city_and_zip.split(' ').last
  City.create(name: city_name, zip_code: zip)
  end
puts "Cities table"
tp City.all


#Users
adjectifs= %w[petit grand maigre gros chauve musclé intelligent parfait médiocre insupportable éblouissant valeureux ringard beau gentil cool]
10.times do 
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  age = rand(18..90)
  city = City.all.sample
  password = Faker::String.random(length: 12)
  text = "Je m'appelle #{first_name}, je suis #{adjectifs.sample} et mon livre préféré est #{Faker::Book.title}, je suis #{Faker::Name.title[:job].sample} à #{city.name} "
  User.create(first_name: first_name, last_name: last_name, description: text, email: Faker::Internet.email, age: age, city: city, password: password)
  end
puts "Users table"
tp User.all

#Gossips
20.times do 
  Gossip.create(title: Faker::Hipster.word, content: Faker::ChuckNorris.fact, user: User.all.sample )
  end
puts "Gossips table"
tp Gossip.all

#Tags 
10.times do
  Tag.create(title: Faker::Verb.base)
  end
puts "Tags table"
tp Tag.all

#Sync tags with gossips
40.times do
JoinTableTagGossip.create(gossip: Gossip.all.sample, tag: Tag.all.sample)
end
puts "JoinTableTagGossip table"
tp Tag.all


# Private messages
20.times do
content = Faker::Lorem.sentence(word_count: 50 + rand(100))
sender = User.all.sample
recipient = User.all.sample
PrivateMessage.create(content: content, sender: sender, recipient: recipient)
end

tp PrivateMessage.all

# Comments
50.times do
  content = Faker::Lorem.sentence(word_count: 15)
  user = User.all.sample
  gossip = Gossip.all.sample
  Comment.create(content: content, user: user, gossip: gossip)
  end
  tp Comment.all
  puts "------------Comments printed------------"



50.times do
  user = User.all.sample
  gossip = Gossip.all.sample
  Like.create(user: user, gossip: gossip)
  end
  puts "------------Likes generated------------"

  




