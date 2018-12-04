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
Product.destroy_all
Tag.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
# Message.destroy_all

tags = ["Breakfast", "Lunch", "Dinner", "Snack", "Dessert"]
tags.each do |t|
  Tag.create(tag: t)
end

user = User.create! :username => "admin", :email => "admin@gmail.com", :password => "123123", :password_confirmation => "123123", :is_admin => true

Recipe.create(title: "Blueberry Corn Muffin Bites", steps: "Preheat oven to 350°F.  Coat mini muffin cups with cooking spray.
Stir together flour, corn meal, baking powder, brown sugar, and salt.  Remove 1 tablespoon flour mixture, set aside.
Add milk, pecans, egg, and oil until thoroughly mixed.
Toss together reserved flour mixture and blueberries.  Gently fold into batter.  Spoon batter into prepared muffin cups.
Bake 15 minutes or until toothpick inserted in center comes out clean.", image: "https://celiac.org/eat-gluten-free/wp-content/uploads/2017/12/DoleCornMuffins.jpg", user_id: user.id)
