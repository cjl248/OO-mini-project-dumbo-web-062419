require_relative '../config/environment.rb'


u1 = User.new("blues clues")
u2 = User.new("clifford TBRD")
u3 = User.new("dr. zooz")


i1 = Ingredient.new("coconut meat")
i2 = Ingredient.new("tomato")
i3 = Ingredient.new("dandilions")
i4 = Ingredient.new("poop")

ingredient_arr = [i1, i2, i3, i4]


a1 = Allergy.new(u2, i1)
a2 = Allergy.new(u1, i2)
a3 = Allergy.new(u1, i3)
a4 = Allergy.new(u1, i3)
a5 = Allergy.new(u3, i2)
a6 = Allergy.new(u2, i2)

r1 = Recipe.new("mozz stix")
r2 = Recipe.new("tuna melt")


rc1 = u1.add_recipe_card("jul 21", 9, r1)
rc2 = u2.add_recipe_card("mar 15", 8.2, r2)
rc3 = u3.add_recipe_card("dec 12", 6, r1)








binding.pry
0
