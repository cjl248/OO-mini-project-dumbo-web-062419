class Recipe
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select { |card| card.recipe == self }
  end

  def users
    recipe_cards.map { |card| card.user }
  end

  def recipe_ingredients
    RecipeIngredient.all.select { |recipe_ingredient| recipe_ingredient.recipe == self }
  end

  def ingredients
    self.recipe_ingredients.map { |recipe_ingredient| recipe_ingredient.ingredient }
  end

  def user_count
    users.length
  end

  def self.most_popular
    all.max_by { |recipe| recipe.users.count }
    all.max_by(&:user_count)
  end

  def add_ingredient(ingredients)
    ingredients.each { |ingredient| RecipeIngredient.new(ingredient, self) }
  end


end
