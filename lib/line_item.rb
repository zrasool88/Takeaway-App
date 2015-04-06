class LineItem

  attr_reader :dish, :quantity

  def initialize(dish, quantity)
    @dish=dish
    @quantity=quantity
  end

  def subtotal
    dish.price * quantity
  end
end