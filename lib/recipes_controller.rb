require_relative "recipe"
require_relative "recipes_view"

class RecipesController
  def initialize(cookbook)
    @cookbook = cookbook
    @view = RecipesView.new
  end

  def print_recipes
    display_recipes
  end

  def add_recipe
    #get the description from the view
    description = @view.get_new_recipe
    #create a new recipe
    recipe = Recipe.new(name, description)
    #add it to the repo
    @cookbook.add(recipe)
  end

  def remove_recipe
    display_recipes
    #get the index of the recipe to delete
    index = @view.get_recipe_index
    #remove the recipe from the repo
    @repository.remove
  end

  private

  def display_recipes
    recipes = @cookbook.all
    @view.display(recipes)
  end
end
