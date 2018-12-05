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

# tags = ["Breakfast", "Lunch", "Dinner", "Snack", "Dessert"]
# tags.each do |t|
#   Tag.create(tag: t)
# end

user = User.create! :username => "admin", :email => "admin@gmail.com", :password => "123123", :password_confirmation => "123123", :is_admin => true

breakfast = Tag.create(tag: "Breakfast")
lunch = Tag.create(tag: "Lunch")
dinner = Tag.create(tag: "Dinner")
snack = Tag.create(tag: "Snack")
dessert = Tag.create(tag: "Dessert")

recipe = Recipe.create(title: "Spinach & Cheese Frittata", steps: "Pour olive oil into a 10” nonstick skillet over medium heat. Add sweet onions; cook 1 minute.
Add Canadian Bacon; cook 3 minutes or until onions are tender, stirring frequently.
Meanwhile, in a large bowl, beat eggs with heavy cream or half and half.
Add spinach, roasted pepper, salt and pepper; mix well.
Stir mixture into cooked Canadian ​Bacon mixture in skillet; mixing well.
Cook 8 minutes or until bottom of frittata is golden brown, lifting edges with a spatula to allow uncooked eggs to flow to bottom of frittata.
Top with cheese and place skillet under the broiler or in a hot oven until center is set and cheese is melted. Cut into wedges.
Canadrian Bacon, Spinach, & Cheese Frittata
Nutrition Facts
Canadrian Bacon, Spinach, & Cheese Frittata
Amount Per Serving
Calories 318 Calories from Fat 198
% Daily Value*
Total Fat 22g 34%
Sodium 517mg 22%
Total Carbohydrates 4g 1%
Sugars 3g
Protein 26g 52%
* Percent Daily Values are based on a 2000 calorie diet.", image: "https://celiac.org/eat-gluten-free/wp-content/uploads/2017/01/Bacon-Spinach-and-Cheese-Frittata.jpg", user_id: user.id)

Ingredient.create(name: "Tablespoon olive oil", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Cup Yellow Onion thinly sliced", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Ounces Jones Dairy Farm Canadian Bacon sliced", quantity: "6", recipe_id: recipe.id)
Ingredient.create(name: "Large Eggs", quantity: "6", recipe_id: recipe.id)
Ingredient.create(name: "Cup Heavy Cream or half and half", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Cup Fresh Baby Spinach wilted", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Cup Red Pepper Strips roasted, well drained, diced", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Teaspoon Salt", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Teaspoon black pepper", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Cup Swiss Cheese reduced fat, shredded", quantity: "1", recipe_id: recipe.id)

recipe.tags << lunch

####################

recipe = Recipe.create(title: "Vegan Pineapple Fried Quinoa", steps: "Bring quinoa and water to a boil in a saucepan. Reduce heat to medium-low, cover, and simmer 20 minutes, or until water is absorbed. Set quinoa aside, covered, for 10 minutes.
Add coconut oil to a pan or wok over medium-high heat.
Add onion, garlic, ginger, and red pepper flakes and cook for about 3 minutes, until fragrant.
Add the peas, bell pepper, and pineapple, and cook over high-heat for about 3 minutes, stirring frequently, until the pineapple just starts to caramelize.
Add the cooked quinoa, cilantro, and salt. Mix well and cook for an additional minute. Serve hot.
TIP: Quinoa may also be cooked ahead of time and stored in the fridge to cool.", image: "https://celiac.org/eat-gluten-free/wp-content/uploads/2017/12/DoleQuinoa.jpg", user_id: user.id)

Ingredient.create(name: "cup Quinoa uncooked", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "cups Water", quantity: "2", recipe_id: recipe.id)
Ingredient.create(name: "tablespoon Coconut Oil", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "cup Red Onion chopped", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "teaspoon garlic minced", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "teaspoons Ginger fresh, minced", quantity: "2", recipe_id: recipe.id)
Ingredient.create(name: "teaspoons Red Chili Flakes", quantity: "2", recipe_id: recipe.id)
Ingredient.create(name: "cup Frozen Peas", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Red Bell Pepper diced", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Dole Pineapple Tidbits drained", quantity: "2", recipe_id: recipe.id)
Ingredient.create(name: "cup cilantro chopped, fresh", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "teaspoon Salt", quantity: "1", recipe_id: recipe.id)

recipe.tags << lunch

####################

recipe = Recipe.create(title: "Breakfast Burrito", steps: "In a small bowl, beat eggs with water and pepper.
Heat oil in small skillet over medium heat.
Add egg mixture; stir slowly, occasionally scraping bottom and sides of pan. Continue cooking until eggs reach desired consistency.
Wrap tortilla in foil and heat at 300˚ until steaming (about 5 minutes).
Place eggs on warmed tortilla; top with salsa of your choice.", image: "https://celiac.org/eat-gluten-free/wp-content/uploads/2017/01/Breakfast-burrito.jpg", user_id: user.id)

Ingredient.create(name: "Large Eggs", quantity: "2", recipe_id: recipe.id)
Ingredient.create(name: "Tablespoon Water", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Bell Pepper red or green", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "avocado", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Cup Shredded Cheese (optional)", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Teaspoons Extra Virgin Olive Oil", quantity: "2", recipe_id: recipe.id)
Ingredient.create(name: "Mission Gluten-Free Tortilla", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Pinch black pepper freshly ground", quantity: "1", recipe_id: recipe.id)

recipe.tags << breakfast

####################

recipe = Recipe.create(title: "California Rolls", steps: "Wrap a bamboo mat in plastic wrap (so the rice doesn’t stick to the mat).
Break or cut a nori sheet in half and place it on the mat (shiny side down).
Spread a handful of rice over the nori, covering the entire sheet (about 1 cm high).
Flip the nori, so the rice is facing down on the bamboo mat.
Line up the crab sticks vertically along the right side of the nori.
To the left of the crab sticks, line up thick slices of avocado.
Roll the sushi with the bamboo sheet and cut into rolls.
Optional: you can add some sesame seeds to the outside of the rolls and dip in gluten-free soy sauce.", image: "https://www.eatthis.com/wp-content/uploads/media/images/ext/406468586/avocado-roll-500x366.jpg", user_id: user.id)

Ingredient.create(name: "Sticks Trans Ocean Seafood Snackers", quantity: "6", recipe_id: recipe.id)
Ingredient.create(name: "Cup Sticky White Rice", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Sheet Nori", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "avocado", quantity: "1", recipe_id: recipe.id)

recipe.tags << breakfast
recipe.tags << lunch
recipe.tags << dinner

####################

# recipe = Recipe.create(title: "Mango Salsa Burgers", steps: "Burgers
# Follow package instructions to cook burgers. Toast hamburger buns to taste.
# Place burgers inside buns and evenly top with mango salsa, avocado, cheese or anything else you might like!
# Salsa
# Mix all ingredients together in a bowl.
# Tastes better as it sits; at least 1/2 hour prior to eating is recommended.", image: "https://celiac.org/eat-gluten-free/wp-content/uploads/2017/01/veggie-burgers.jpg", user_id: user.id)

# Ingredient.create(name: "Burgers", quantity: "2", recipe_id: recipe.id)
# Ingredient.create(name: "Gluten-Free Veggie Burgers or 1/4 lb burgers of your choice", quantity: "4", recipe_id: recipe.id)
# Ingredient.create(name: "Canyon Bakehouse Hamburger Buns", quantity: "4", recipe_id: recipe.id)
# Ingredient.create(name: "Mango Salsa", quantity: "2", recipe_id: recipe.id)
# Ingredient.create(name: "Cup Mango chunks, sliced thinly", quantity: "2", recipe_id: recipe.id)
# Ingredient.create(name: "Cup Red Onion chopped", quantity: "1", recipe_id: recipe.id)
# Ingredient.create(name: "Cup Tomatoes chopped", quantity: "1", recipe_id: recipe.id)
# Ingredient.create(name: "Cup cilantro fresh, chopped", quantity: "1", recipe_id: recipe.id)
# Ingredient.create(name: "Teaspoons Jalapeno Peppers chopped, optional", quantity: "2", recipe_id: recipe.id)

# recipe.tags << lunch
# recipe.tags << dinner

####################

recipe = Recipe.create(title: "Deep Dark Chocolate Fudge Cookies", steps: "Instructions
Preheat oven to 350 degrees.
Spray two large baking sheets with nonstick spray.
Melt one cup chocolate chips in glass bowl in microwave, stirring twice, about two minutes. Cool slightly (this is best done by putting the chocolate in the fridge or freezer for a few minutes).
Using electric mixer, beat whites in large bowl to soft peaks. This may take a couple of minutes, so be patient. Gradually beat in ½ cup powdered sugar. Continue beating until mixture resembles soft marshmallow creme.
Whisk one cup powdered sugar, cocoa, cornstarch, and salt in medium bowl to blend. On low speed, beat dry ingredients into meringue.
Stir in lukewarm chocolate and ½ cup chocolate chips (if you like it extra chocolatey then feel free to add more). Dough will become very stiff as it cools.
For best results let the dough sit over night to ensure it is easy to work with when rolling the cookies.
Place ½ cup powdered sugar in bowl (there is a lot of left over powered sugar so if you don’t want to waste it then just add the sugar as you need it).
Roll one rounded tablespoon into ball; roll in sugar, coating thickly. Place on prepared baking sheet. Repeat with remaining dough, spacing two inches apart.
Bake until puffed and tops crack, about 10 minutes.
Cool on sheets on rack 10 minutes.
Transfer to rack; cool.
Deep Dark Chocolate Fudge Cookies
Nutrition Facts
Deep Dark Chocolate Fudge Cookies
Amount Per Serving
Calories 152 Calories from Fat 54
% Daily Value*
Total Fat 6g 9%
Sodium 38mg 2%
Total Carbohydrates 24g 8%
Sugars 20g
Protein 2g 4%
* Percent Daily Values are based on a 2000 calorie diet.", image: "https://celiac.org/eat-gluten-free/wp-content/uploads/2017/01/fudge-cookies-1.jpg", user_id: user.id)

Ingredient.create(name: "Cups Enjoy Life Bittersweet Chocolate Chips", quantity: "2", recipe_id: recipe.id)
Ingredient.create(name: "Large Egg Whites room temperature", quantity: "3", recipe_id: recipe.id)
Ingredient.create(name: "Cups powdered sugar divided", quantity: "2", recipe_id: recipe.id)
Ingredient.create(name: "Cup Cocoa Powder unsweetened", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Tablespoon Cornstarch", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Teaspoon Salt", quantity: "1", recipe_id: recipe.id)

recipe.tags << dessert
recipe.tags << snack

####################

recipe = Recipe.create(title: "Pan Pizza Crust", steps: "Preheat oven to 450°.
Combine the olive oil, water, egg, and salt in a bowl and mix. Add in the tapioca starch and Baking & Pancake Mix and combine thoroughly. Stir in the yogurt, Parmesan cheese, and mozzarella cheese. Pour the mixture into two 8-inch greased round cake pans or a 9 x 13-inch pan (use a generous amount of olive oil to grease your pans for a great taste). Sprinkle garlic seasoning on the edges of the pizza crust. Place on middle rack of the preheated oven. Reduce heat to 350°. Bake until slightly golden, 25 to 30 minutes.
Remove the pizza crust from oven. Add toppings and place pizza back into the oven at 350° degrees for 5 to 7 minutes. (Make sure you precook any raw meats or vegetables before using them as toppings.)", image: "https://celiac.org/eat-gluten-free/wp-content/uploads/2017/07/Pan-Pizza-Crust.jpg", user_id: user.id)

Ingredient.create(name: "cup olive oil", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "cup Water", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Egg", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "tsp Salt", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "cup tapioca starch", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "cup Pamela’s Baking & Pancake Mix", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "cup Plain Yogurt", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "cup Parmesan cheese grated", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "cup mozzarella chesse grated", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "garlic seasoning", quantity: "2", recipe_id: recipe.id)

recipe.tags << lunch
recipe.tags << dinner

####################

recipe = Recipe.create(title: "Summer Salad", steps: "Place first six ingredients in serving bowl and arrange attractively.
Make dressing by mixing all other ingredients in small cup until thoroughly blended and then drizzle over salad.
Top with almonds or other nuts if you’d like.
Summer Salad
Nutrition Facts
Summer Salad
Amount Per Serving
Calories 233 Calories from Fat 108
% Daily Value*
Total Fat 12g 18%
Sodium 194mg 8%
Total Carbohydrates 25g 8%
Sugars 18g
Protein 7g 14%
* Percent Daily Values are based on a 2000 calorie diet.", image: "https://celiac.org/eat-gluten-free/wp-content/uploads/2017/01/Strawberry-Blueberry-Feta-Salad.jpg", user_id: user.id)

Ingredient.create(name: "Ounces Mixed Lettuce Leaves washed and spun dry", quantity: "5", recipe_id: recipe.id)
Ingredient.create(name: "Pint blueberries washed", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Pint strawberries washed and hulled (if desired)", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Handful Dole California Chopped Dates", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Parsley", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Miint", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Ounces Brie Cheese sliced into small pieces", quantity: "5", recipe_id: recipe.id)
Ingredient.create(name: "Tablespoon olive oil", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Teaspoon Red Wine Vinegar", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Teaspoon honey", quantity: "1", recipe_id: recipe.id)

recipe.tags << breakfast
recipe.tags << lunch
recipe.tags << dinner
recipe.tags << snack

####################

recipe = Recipe.create(title: "Pasta", steps: "Cook pasta according to package instructions.
Blend the remaining ingredients until creamy and smooth.
Pour over cooked pasta.", image: "https://fitfoodiefinds.com/wp-content/uploads/2018/03/tomato-basil-creamy-vegan-pasta-square.png", user_id: user.id)

Ingredient.create(name: "Ounces Gluten-Free Pasta", quantity: "8", recipe_id: recipe.id)
Ingredient.create(name: "Ounces Tofu silken, lite, firm", quantity: "12", recipe_id: recipe.id)
Ingredient.create(name: "Cup Pumpkin Puree", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Cup Nutritional Yeast", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Tablespoon San-J Reduced Sodium Tamari Sauce", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Tablespoon Lemon Juice", quantity: "1", recipe_id: recipe.id)
Ingredient.create(name: "Tablespoon Mustard", quantity: "1", recipe_id: recipe.id)

recipe.tags << lunch

#########################

Product.create(title: "White Rolls", description: "Gluten and wheat free frozen white rolls.", price: 11, image: "https://groceries.morrisons.com/productImages/278/278794011_0_640x640.jpg?identifier=00ac70ae1e31bbde4c4faf8b87b100d3")
Product.create(title: "Chocolix", description: "32% milk chocolate, 30% caramel filling, Specifically formulated for people intolerant to gluten, Gluten and wheat free.", price: 14, image: "https://groceries.morrisons.com/productImages/306/306399011_0_640x640.jpg?identifier=f6b4758d2b75aee6e787a8fc535208e0")
Product.create(title: "Pain au Chocola", description: "Specifically formulated for people intolerant to gluten.", price: 17, image: "https://www.ocado.com/productImages/363/363491011_0_640x640.jpg?identifier=fea0aa03a7cf05528974af520705aa69")
Product.create(title: "Fette Croccanti", description: "Cracker toast The light and fragrant alternative to bread.", price: 20, image: "https://mambo.vteximg.com.br/arquivos/ids/207789/189069.jpg?v=636312298543130000")
Product.create(title: "Fibre Crispbread", description: "Made with wheat germ, bran and whole grain rye, with only 80 calories, 5g fiber, and 14g whole grain per serving; Product of Germany", price: 18, image: "https://ui.assets-asda.com/dm/asdagroceries/8008698011294_T1?defaultImage=asdagroceries/noImageAvailable&resMode=sharp2&id=U6tSf3&fmt=jpg&fit=constrain,1&wid=280&hei=280")
Product.create(title: "Artisan Baker Multigrain Bread", description: "Gluten Free Bread with Ancient Grains", price: 33, image: "https://www.glutenfreepalace.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/0/b004xudwx0.main.jpg.jpg")
Product.create(title: "Penne Pasta", description: "Penne is one of the most famous Italian pasta shapes and greatly loved across Italy.", price: 27, image: "https://images-na.ssl-images-amazon.com/images/I/91McIYx4%2BiL.jpg")
Product.create(title: "Panini Rolls", description: "These light gluten free rolls are great as a dinner roll or to put your favourite sandwich fillings in for the lunch! Ideal for anyone with Coeliac Disease or gluten intolerance for a sandwich alternative.", price: 21, image: "https://www.sunnybrookhealthstore.com.au/assets/full/818.jpg")
Product.create(title: "Cereal Flakes", description: "It is a breakfast cereal made by toasting flakes of corn", price: 35, image: "https://cf3.s3.souqcdn.com/item/2017/03/30/22/35/21/57/item_XL_22352157_30293569.jpg")
