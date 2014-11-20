class Menu

	attr_accessor :list

	def initialize
		@list = {}
	end
	
	def add_dish(name, price)
		@list.store(name, price)
	end
end