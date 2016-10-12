# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Admin.create({id: 1, email: "#{ENV["ADMIN_EMAIL"]}", password: "#{ENV["ADMIN_PASSWORD"]}", password_confirmation: "#{ENV['ADMIN_PASSWORD']}" })
ProductType.create({id: 1, name: "Cables"})
ProductType.create({id: 2, name: "Connectors"})
ProductType.create({id: 3, name: "Terminals"})
ProductType.create({id: 4, name: "Motion Control Components"})