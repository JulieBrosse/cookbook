class View
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_recipe_name
    puts "Name?"
    "-----------"
    return gets.chomp
  end

  def ask_recipe_description
    puts "Description?"
    "-----------"
    return gets.chomp
  end

  def get_recipe_index
    puts "Index?"
    return gets.chomp.to_i
  end

  def confirmation
    puts "------------------"
    puts "Thank you for having done it!"
  end

  def error
    puts "Sorry, no recipe"
  end
end
