class LineItem

  attr_reader :dish, :quantity, :subtotal

  def initialize(dish, quantity)
    @dish=dish
    @quantity=quantity
    @subtotal
  end

  def subtotal
    @subtotal = dish.price * quantity
  end
end