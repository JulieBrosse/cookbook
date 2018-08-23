class Recipe
  def initialize(attrs = {})
    @name = attrs[:name]
    @description = attrs[:description]
  end
end
