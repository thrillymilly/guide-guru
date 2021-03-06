# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
Eat.destroy_all
Plan.destroy_all
SavedEvent.destroy_all
SavedEat.destroy_all
Comment.destroy_all

user = User.new(
         email: "test@gg.com",
         full_name: "Robinson Crusoe",
         address_1: "1 Stranded Rd",
         address_2: "Lost Island",
         city: "Nowhere",
         state_code: "wa",
         zip_code: "W9001",
         country_code: "us"
       )
user.password = "test"
user.save

Event.create(latitude: -38.506039, longitude: 145.146903, title: 'Penguin Parade', date: '2017/05/12', image: 'http://www.microflite.com.au/wp-content/uploads/tours-penguin-parade-gallery-2.jpg', info: 'a must see, great show')
Event.create(latitude: -38.517456, longitude: 145.118000, title: 'The Nobbies Show', date: '2017/08/10', image: 'https://media-cdn.tripadvisor.com/media/photo-s/0c/8c/ce/b1/the-nobbies-centre.jpg', info: 'The Nobbies Centre is an ecotourism destination located at Point Grant, on the western tip of Phillip Island, Victoria, Australia')
Event.create(latitude: -38.661900, longitude: 143.105070, title: '12 Apostles', date: '2017/05/06', image: 'http://cd.visitmelbourne.com/-/media/atdw/great-ocean-road/things-to-do/tours/5c9e8146c4c0aaa9a785f657103339eb_1600x1200.jpeg?ts=20161220310505&w=480&h=360&crop=1%7Chttp://cd.visitmelbourne.com/-/media/atdw/great-ocean-road/things-to-do/tours/5c9e8146c4c0aaa9a785f657103339eb_1600x1200.jpeg?ts=20161220310505&w=720&h=540&crop=1', info: 'Visitor centre, with a car park and toilet, by a geologically significant marine national park.')
Event.create(latitude: -37.820954, longitude: 144.968521, title: 'Theatres and Exhibition Tour', date: '2017/05/10', image: 'https://www.artscentremelbourne.com.au/~/media/9c6e2e9bc890456188f2695fca843b75.ashx?bc=white', info: 'The Theatres and Exhibition Tour is a great way to explore Arts Centre Melbourne\'s exhibitions and the iconic Theatres Building in which they reside.')

Eat.create(latitude: -38.522112, longitude: 145.314076, title: 'The Cape Kitchen', image: 'https://www.visitphillipisland.com/wp-content/uploads/2016/09/The-Cape-Kitchen-Hero-Image-700x476.jpg', info: 'great food, friendly staffs')
Eat.create(latitude: -38.464027, longitude: 145.309135, title: 'The Foreshore Bar & Restaurant', image: 'https://www.visitphillipisland.com/wp-content/uploads/2012/11/Foreshore.jpg', info: 'Our menu’s comprise of local produce, fresh seafood and dishes and influences from around the world. Lunch time we offer light snacks as well as main meals, in the evening we have a full a la carte menu to include starter, mains & desserts')
Eat.create(latitude: -38.450868, longitude: 145.239423, title: 'Fig and Olive', image: 'https://www.cowes.info/wp-content/uploads/2014/09/Fig_And_Olive_Restaurant_Cowes.jpg', info: 'Very good service accompanied by great and freah tasting food')
Eat.create(latitude: -37.822289, longitude: 144.968332, title: 'Garden Restaurant', image: 'https://3.bp.blogspot.com/-Eygs_gxxm9k/V7QuB28OHOI/AAAAAAAAGRA/iwCLomktzVg_88FJgKVYq-YPkYCXj2nIACLcB/s1600/IMGP2003-01.jpg', info: 'Refined share plates and seasonal lunches in a minimalist, glass-walled space with garden views.')

Plan.create(latitude: -38.489870, longitude: 145.203828, arrival_date: Date.new(2017, 5, 5), departure_date: Date.new(2017, 6, 6), user_id: User.first.id)
Plan.create(latitude: -37.821607, longitude: 144.969393, arrival_date: Date.new(2017, 8, 8), departure_date: Date.new(2017, 9, 9), user_id: User.first.id)

SavedEvent.create(event_id: Event.first.id, plan_id: Plan.first.id)
SavedEvent.create(event_id: Event.second.id, plan_id: Plan.second.id)

SavedEat.create(eat_id: Eat.first.id, plan_id: Plan.first.id)
SavedEat.create(eat_id: Eat.second.id, plan_id: Plan.second.id)
