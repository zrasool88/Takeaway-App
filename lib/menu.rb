class Menu

	attr_reader :dishes

	def initialize
		@dishes = []
	end
	
	def add(dish)
		@dishes << dish
	end

	def remove(dish)
		@dishes.delete(dish)
	end

	def list_dishes
		@dishes.each.with_index(1) { |dish, index| puts "#{index}. #{dish.name}: $#{dish.price}" }
	end
end