# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

Schedule.destroy_all    #NOTE Had to list Schedule first due to re-seeding error
                        #NOTE Theory: Had to destroy dependent connections 1st but WHY?
                        #NOTE Reason: Because when User listed 1st & destroyed, instant auto error in Schedule
User.destroy_all
Status.destroy_all
Cleaning.destroy_all
Room.destroy_all

# abe = User.create(name: 'Abraham', email: 'abe@email.com', password: 'abe')

stats = Status.create([{active: true}, {active: false}, {active: true}])

users = User.create([
    {name: "Abraham", email: "abe@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stats[0].id}, 
    {name: "Beatrice", email: "bea@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stats[1].id}, 
    {name: "Cecelia", email: "cc@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stats[2].id}
])


cleanings = Cleaning.create([{action: "wash windows"}, {action: "sweep floors"}, {action: "dust furniture"}])

# puts "This works now: #{users[0].id} and #{cleanings.first.id}"

rooms = Room.create([{name: "Sun Room"}, {name: "Basement"}])

Schedule.create(user_id: users[0].id, cleaning_id: cleanings.first.id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[0].id)
Schedule.create(user_id: users[1].id, cleaning_id: cleanings.first.id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: false, room_id: rooms[0].id)
Schedule.create(user_id: users[2].id, cleaning_id: cleanings[1].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[1].id)
Schedule.create(user_id: users[2].id, cleaning_id: cleanings[2].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[1].id)
Schedule.create(user_id: users[2].id, cleaning_id: cleanings.first.id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: false, room_id: rooms[0].id)
Schedule.create(user_id: users[2].id, cleaning_id: cleanings.first.id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[1].id)
Schedule.create(user_id: users[2].id, cleaning_id: cleanings[1].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: false, room_id: rooms[1].id)



#######################################


# users = User.create([{name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Name.unique.initials(number: 4)}, {name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Name.unique.initials(number: 4)}, {name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Name.unique.initials(number: 4)}])

# cleanings = Cleaning.create([{action: "wash windows"}, {action: "sweep floors"}, {action: "dust furniture"}])

# Schedule.create(user_id: users[0].id, cleaning_id: cleanings.first.id, dated: "2021-01-27 14:51:58", original: true)
# Schedule.create(user_id: users[1].id, cleaning_id: cleanings.first.id, dated: Faker::Date.between(from: '2021-01-10', to: '2021-04-20'), original: false)

##########################################

# users = User.create([{name: "Abraham", email: abe@email.com, password: Faker::Name.unique.initials(number: 4)}, {name: "Beatrice", email: bea@email.com, password: Faker::Name.unique.initials(number: 4)}, {name: Cecelia, email: cc@email.com, password: Faker::Name.unique.initials(number: 4)}])

# 5.times do   
#     users = User.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, password: Faker::Name.unique.initials(number: 4))
#     puts "#{users[x].id}""
#     x=x+1;
# end

##################################################

# stats = Status.create([{active: true}, {active: false}, {active: true}])

# users = User.create([
#     {name: "Abraham", email: "abe@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stats[-1].id}, 
#     {name: "Beatrice", email: "bea@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stats[0].id}, 
#     {name: "Cecelia", email: "cc@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stats[1].id}
# ])

##################################################

# stat1 = Status.create(active: true)
# stat2 = Status.create(active: false)
# stat3 = Status.create(active: true)

# users = User.create([
#     {name: "Abraham", email: "abe@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stat1.id}, 
#     {name: "Beatrice", email: "bea@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stat2.id}, 
#     {name: "Cecelia", email: "cc@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stat3.id}
# ])

