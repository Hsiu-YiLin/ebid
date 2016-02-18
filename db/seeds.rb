# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.new(name: "Kyle", email: "kyle@greatguy.com")
user2 = User.new(name: "Jorhey", email: "jorhey@email.com")
user1.save
user2.save

user1.products.create(title: "Shoes", description: "It's a good pair of shoes", deadline: DateTime.now + 3.hour)
user1.products.create(title: "Backpack", description: "You put it on your back", deadline: DateTime.now + 5.day)
user2.products.create(title: "Orange", description: "It might not be orange", deadline: DateTime.now + 19.day)
user2.products.create(title: "Chair", description: "It sits on you.", deadline: DateTime.now + 26.day)