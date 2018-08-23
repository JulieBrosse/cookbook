class CookbookView
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      "#{index + 1} - #{recipe.name}"
    end
  end

  def get_new_recipe
    puts "Please describe the receipt"
    "-----------"
    gets.chomp
  end

  def get_recipe_index
    puts "Index?"
    gets.chomp.to_i - 1
  end
end
