class Ingredient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergies
    Allergy.all.select { |allergy| allergy.ingredient == self }
  end

  def users
    allergies.map { |allergy| allergy.user }
  end

  def user_count
    users.length
  end

  def self.most_common_allergen
    # => ingredient that most users are allergic to
    all.max_by { |ingredient| ingredient.users.count }
  end

end
