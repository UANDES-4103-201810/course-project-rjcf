# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Proyect.create(name: 'AmazingProject', user_id: 1)
Proyect.create(name: 'hola', user_id: 1)
Proyect.create(name: 'rape', user_id: 1)
Proyect.create(name: 'chao', user_id: 1)

Category.create(name: 'Amazing', proyect_id: 1)
Category.create(name: 'Healthy', proyect_id: 1)

UserFundProject.create(user_id: 1, proyect_id: 1)
UserFundProject.create(user_id: 1, proyect_id: 2)
UserFundProject.create(user_id: 3, proyect_id: 1)
UserFundProject.create(user_id: 4, proyect_id: 1)

UserRole.create(type: 'admin', user_id: 1)
UserRole.create(type: 'guest', user_id: 2)
UserRole.create(type: 'guest', user_id: 3)
UserRole.create(type: 'guest', user_id: 4)



Wishlist.create(proyect_id: 1)
Wishlist.create(proyect_id: 2)

