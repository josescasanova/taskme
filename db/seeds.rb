# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
# # Environment variables (ENV['...']) can be set in the file config/application.yml.
# # See http://railsapps.github.io/rails-environment-variables.html

# user1 = User.create(name: Faker::Name.name, email: Faker::Internet.email, provider: "facebook", uid: Faker::Number.number(10), image: "http://www.bobbiebush.com/wp-content/oqey_gallery/galleries/headshot-gallery/galimg/headshot01_kh01_950x650.jpg" )
# user2 = User.create(name: Faker::Name.name, email: Faker::Internet.email, provider: "facebook", uid: Faker::Number.number(10), image: "http://www.nancyjophoto.com/images/kaley.jpg" )
# user3 = User.create(name: Faker::Name.name, email: Faker::Internet.email, provider: "facebook", uid: Faker::Number.number(10), image: "http://www.mariepapp.com/data/photos/400_1Will_Headshot_3.jpg" )
# user4 = User.create(name: Faker::Name.name, email: Faker::Internet.email, provider: "facebook", uid: Faker::Number.number(10), image: "http://www.colemanphotographix.com/wp-content/uploads/WomensHeadshot-0002.jpg" )

u = User.where(name: "Borja García de Vinuesa", provider: "facebook").first
task1 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)
task2 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)
task3 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)
task4 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)
# task5 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, customer_id: user1.id, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)
# task6 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, customer_id: user2.id, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)
# task7 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, customer_id: user3.id, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)
# task8 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, customer_id: user4.id, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)
# task9 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, customer_id: user2.id, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)
# task10 = Task.create(description: Faker::Lorem.paragraph, status: "Open", category: Faker::Commerce.department, customer_id: user1.id, title: Faker::Company.catch_phrase, budget: Faker::Number.number(1), location: Faker::Address.city)

u.tasks << task1
u.tasks << task2
u.tasks << task3
u.tasks << task4
# user1.tasks << task5
# user2.tasks << task6
# user3.tasks << task7
# user4.tasks << task8
# user1.tasks << task9
# user2.tasks << task10


proposal1 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
proposal2 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
proposal3 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
proposal4 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
proposal5 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
proposal6 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
proposal7 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal8 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal9 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal10 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal12 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal11 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal13 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal14 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal15 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal16 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal17 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal18 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )
# proposal19 = Proposal.create(description: Faker::Lorem.paragraph, price: Faker::Number.number(1) )

task1.proposals << proposal1
task2.proposals << proposal2
task3.proposals << proposal3
task4.proposals << proposal4
task1.proposals << proposal5
task2.proposals << proposal6
task3.proposals << proposal7
# task8.proposals << proposal9
# task9.proposals << proposal8
# task10.proposals << proposal10
# task1.proposals << proposal11
# task2.proposals << proposal12
# task3.proposals << proposal13
# task4.proposals << proposal14
# task5.proposals << proposal15
# task6.proposals << proposal16
# task7.proposals << proposal17
# task8.proposals << proposal19
# task9.proposals << proposal18
# task10.proposals << proposal19



