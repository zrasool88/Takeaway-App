class LineItem

  attr_reader :dish

  def initialize(dish=Dish.new("chips", 5))
    @dish=dish
  end
end