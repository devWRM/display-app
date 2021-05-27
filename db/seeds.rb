# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

# abe = User.create(name: 'Abraham', email: 'abe@email.com', password: 'abe')

users = User.create([{name: "Abraham", email: "abe@email.com", password: "abe"}, {name: "Beatrice", email: "bea@email.com", password: "bea"}, {name: "Cecelia", email: "cc@email.com", password: "cc"}])
