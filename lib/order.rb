class Order

	attr_reader :items

	def initialize
		@items = []
		@complete = false
	end

	def complete?
		@complete
	end

  def add_line_item(line_item)
    @items << line_item
  end

  def remove_line_item(line_item)
    @items.delete(line_item)
  end

  def line_total(line_item)
    line_item.subtotal
  end

  def total
    items.map{|lineitem| lineitem.subtotal}.inject(&:+)
  end
end