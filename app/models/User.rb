class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergies
    Allergy.all.select { |allergy| allergy.user == self }
  end

  def allergens
    allergies.map { |allergy| allergy.ingredient }.uniq
  end

  def add_recipe_card(date, rating, recipe)
    RecipeCard.new(date, rating, self, recipe)
  end

  

end
