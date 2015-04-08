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
end