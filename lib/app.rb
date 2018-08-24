require_relative 'cookbook'
require_relative 'recipes_controller'
require_relative 'router'

csv_file = File.join(__dir__, "recipes.csv")
cookbook = Cookbook.new(csv_file)
controller = RecipesController.new(cookbook)
router = Router.new(controller)
router.run
