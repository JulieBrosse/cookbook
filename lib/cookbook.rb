  require "csv"
  require_relative "recipe"

class Cookbook
  def initialize(csv_file)
    @recipes = []
    @csv_file = csv_file
    load_csv
  end

  def all
    @recipes
  end

  def add(recipe)
    @recipes << recipe
    store_in_csv
  end

  def remove(index)
    @recipes.delete_at(index - 1)
    store_in_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      name = row[0]
      description = row[1]
      recipe = Recipe.new(name, description)
      @recipes << recipe
    end
  end

  def store_in_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
