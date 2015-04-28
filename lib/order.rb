class Order
  attr_reader :items

  def initialize
    @items = []
  end

  def add_line_item(line_item)
    @items << line_item
  end

  def remove_line_item(line_item)
    @items.delete(line_item)
  end

  def total
    @items.map(&:line_total).inject(:+)
  end

  def empty?
    @items.count == 0
  end
end
