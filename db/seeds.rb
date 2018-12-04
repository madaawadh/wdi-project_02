# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Order.destroy_all
Item.destroy_all
# Product.destroy_all
Tag.destroy_all
# Recipe.destroy_all
# Ingredient.destroy_all
# Message.destroy_all

tags = ["Breakfast", "Lunch", "Dinner", "Snack", "Dessert"]
tags.each do |t|
  Tag.create(tag: t)
end

user = User.create! :username => "admin", :email => "admin@gmail.com", :password => "123123", :password_confirmation => "123123", :is_admin => true
