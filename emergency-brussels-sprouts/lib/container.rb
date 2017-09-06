class Container
  attr_accessor :ingredients
  attr_reader :weight, :maximum_holding_weight

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def which_ingredient
    @ingredients.first.name
  end

  def fill_with_ingredient(ingredient)
    fill_amount = @maximum_holding_weight / ingredient.weight
    @weight += fill_amount * ingredient.weight
    @ingredients.fill(ingredient, 0..fill_amount)
  end

  def how_many_ingredients
    @ingredients.length
  end

  def remove_one_ingredient
    ingredient = @ingredients.pop
    @weight -= ingredient.weight
  end

  def empty
    @ingredients = []
  end
end
