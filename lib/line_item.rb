class LineItem

  attr_reader :dish, :quantity

  def initialize(dish, quantity)
    @dish=dish
    @quantity=quantity
  end

  def line_total
    dish.price * quantity
  end
end