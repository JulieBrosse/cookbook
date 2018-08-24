require_relative "recipe"
require_relative "view"

class RecipesController
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def print_recipes
    display_recipes
  end

  def add_recipe
    #get the description from the view
    name = @view.ask_recipe_name
    description = @view.ask_recipe_description
    #create a new recipe
    recipe = Recipe.new(name, description)
    #add it to the repo
    @view.confirmation
    @cookbook.add(recipe)
  end

  def remove_recipe
    display_recipes
    #get the index of the recipe to delete
    index = @view.get_recipe_index
    #remove the recipe from the repo
    @cookbook.remove(index)
  end

  private

  def display_recipes
    recipes = @cookbook.all
    if recipes == []
      @view.error
    else
      @view.display(recipes)
    end
  end
end
