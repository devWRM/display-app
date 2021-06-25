# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

Assignment.destroy_all
Schedule.destroy_all    #NOTE Had to list Schedule first due to re-seeding error
                        #NOTE Theory: Had to destroy dependent connections 1st but WHY?
                        #NOTE Reason: Because when User listed 1st & destroyed, instant auto error in Schedule
User.destroy_all
Room.destroy_all
Type.destroy_all
Cleaning.destroy_all
# Status.destroy_all

# abe = User.create(name: 'Abraham', email: 'abe@email.com', password: 'abe')


users = User.create([
    {name: "Abraham", email: "abe@email.com", password: Faker::Name.unique.initials(number: 4)}, 
    {name: "Beatrice", email: "bea@email.com", password: Faker::Name.unique.initials(number: 4)}, 
    {name: "Cecelia", email: "cc@email.com", password: Faker::Name.unique.initials(number: 4), isActive: false}, 
    {name: "DeAnna", email: "dee@email.com", password: Faker::Name.unique.initials(number: 4)}, 
    {name: "Elise", email: "eel@email.com", password: Faker::Name.unique.initials(number: 4)}
])

rooms = Room.create([{name: "main office"}, {name: "attic"}, {name: "bathroom"}, {name: "lobby"}])

types = Type.create([{name: "major"}, {name: "minor"}, {name: "all"}, {name: "floor maintenance"}, {name: "furniture maintenance"}])

cleanings = Cleaning.create([{duty: "windows washed"}, {duty: "floors swept"}, {duty: "furniture dusted"}, {duty: "trash emptied"}, {duty: "supplies replenished"}, {duty: "floors mopped"}, {duty: "floors waxed"}, {duty: "furniture repaired"}])

Assignment.create(type_id: types[2].id, cleaning_id: cleanings[0].id)
Assignment.create(type_id: types[2].id, cleaning_id: cleanings[1].id)
Assignment.create(type_id: types[2].id, cleaning_id: cleanings[2].id)
Assignment.create(type_id: types[2].id, cleaning_id: cleanings[3].id)
Assignment.create(type_id: types[2].id, cleaning_id: cleanings[4].id)
Assignment.create(type_id: types[2].id, cleaning_id: cleanings[5].id)
Assignment.create(type_id: types[2].id, cleaning_id: cleanings[6].id)
Assignment.create(type_id: types[2].id, cleaning_id: cleanings[7].id)

Assignment.create(type_id: types[1].id, cleaning_id: cleanings[0].id)
Assignment.create(type_id: types[0].id, cleaning_id: cleanings[1].id)
Assignment.create(type_id: types[0].id, cleaning_id: cleanings[2].id)
Assignment.create(type_id: types[0].id, cleaning_id: cleanings[3].id)
Assignment.create(type_id: types[0].id, cleaning_id: cleanings[4].id)

Assignment.create(type_id: types[3].id, cleaning_id: cleanings[1].id)
Assignment.create(type_id: types[3].id, cleaning_id: cleanings[5].id)
Assignment.create(type_id: types[3].id, cleaning_id: cleanings[6].id)

Assignment.create(type_id: types[4].id, cleaning_id: cleanings[2].id)
Assignment.create(type_id: types[4].id, cleaning_id: cleanings[7].id)


Schedule.create(user_id: users[0].id, type_id: types[2].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[0].id)
Schedule.create(user_id: users[0].id, type_id: types[0].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: false, room_id: rooms[0].id)
Schedule.create(user_id: users[1].id, type_id: types[0].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[1].id)
Schedule.create(user_id: users[3].id, type_id: types[0].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[1].id)
Schedule.create(user_id: users[3].id, type_id: types[1].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[1].id)
Schedule.create(user_id: users[0].id, type_id: types[0].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: false, room_id: rooms[0].id)
Schedule.create(user_id: users[1].id, type_id: types[1].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: false, room_id: rooms[1].id)
Schedule.create(user_id: users[3].id, type_id: types[2].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[2].id)

Schedule.create(user_id: users[0].id, type_id: types[3].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[3].id)
Schedule.create(user_id: users[3].id, type_id: types[4].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[0].id)


####################################### ORIGINAL BEGIN

# users = User.create([
#     {name: "Abraham", email: "abe@email.com", password: Faker::Name.unique.initials(number: 4), active: true}, 
#     {name: "Beatrice", email: "bea@email.com", password: Faker::Name.unique.initials(number: 4), active: true}, 
#     {name: "Cecelia", email: "cc@email.com", password: Faker::Name.unique.initials(number: 4), active: false}, 
#     {name: "DeAnna", email: "dee@email.com", password: Faker::Name.unique.initials(number: 4), active: true}, 
#     {name: "Elise", email: "eel@email.com", password: Faker::Name.unique.initials(number: 4), active: true}
# ])


# cleanings = Cleaning.create([{action: "wash windows"}, {action: "sweep floors"}, {action: "dust furniture"}])

# puts "This works now: #{users[0].id} and #{cleanings.first.id}"

# rooms = Room.create([{name: "Sun Room"}, {name: "Basement"}])

# Schedule.create(user_id: users[0].id, cleaning_id: cleanings.first.id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[0].id, pass: false)
# Schedule.create(user_id: users[1].id, cleaning_id: cleanings.first.id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: false, room_id: rooms[0].id, pass: false)
# Schedule.create(user_id: users[3].id, cleaning_id: cleanings[1].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[1].id, pass: false)
# Schedule.create(user_id: users[3].id, cleaning_id: cleanings[2].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[1].id, pass: true)
# Schedule.create(user_id: users[3].id, cleaning_id: cleanings.first.id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: false, room_id: rooms[0].id, pass: true)
# Schedule.create(user_id: users[3].id, cleaning_id: cleanings.first.id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: true, room_id: rooms[1].id, pass: true)
# Schedule.create(user_id: users[3].id, cleaning_id: cleanings[1].id, dated: Faker::Date.unique.between(from: '2021-01-10', to: '2021-04-20'), original: false, room_id: rooms[1].id, pass: false)



####################################### ORIGINAL END


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

# NOTE Status table & User's status_id foreign key ALL DELETED
# stats = Status.create([{active: true}, {active: false}, {active: true}])

# users = User.create([
#     {name: "Abraham", email: "abe@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stats[-1].id}, 
#     {name: "Beatrice", email: "bea@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stats[0].id}, 
#     {name: "Cecelia", email: "cc@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stats[1].id}
# ])

##################################################

# NOTE Status table & User's status_id foreign key ALL DELETED
# stat1 = Status.create(active: true)
# stat2 = Status.create(active: false)
# stat3 = Status.create(active: true)

# users = User.create([
#     {name: "Abraham", email: "abe@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stat1.id}, 
#     {name: "Beatrice", email: "bea@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stat2.id}, 
#     {name: "Cecelia", email: "cc@email.com", password: Faker::Name.unique.initials(number: 4), status_id: stat3.id}
# ])

