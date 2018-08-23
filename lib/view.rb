class CookbookView
  def display(recipes)
    recipes.each_with_index do |recipe, index|
      "#{index + 1} - #{recipe.name}"
    end
  end

  def ask_user_for_description
    puts "Please describe the receipt"
    "-----------"
    gets.chomp
  end

  def ask_user_for_index
    puts "Index?"
    gets.chomp.to_i - 1
  end
end
