class Cookbook
  require_relative "recipe"

  def initialize
    @recipes = []
  end

  def all
    @recipes
  end

  def add(recipe)
    @recipes << recipe
  end

  def find(index)
    @recipes[index]
  end

  def remove(index)
    @recipes.delete_at(index - 1)
  end
end
