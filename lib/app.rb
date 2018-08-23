require_relative 'cookbook'
require_relative 'recipes_controller'
require_relative 'router'

cookbook = Cookbook.new
controller = RecipesController.new(cookbook)
router = Router.new(controller)
router.run
