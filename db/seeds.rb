# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cookbook = Cookbook.create(title: "Momma's YumYum's", description: 'delish', user_id: 1)
cookbook.recipes.create(title: "YumYum #1", description: 'potatos and broccoli', user_id: 1)