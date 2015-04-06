class Order

	attr_reader :items

	def initialize
		@items = {}
		@complete = false
	end

	def complete?
		@complete
	end
end