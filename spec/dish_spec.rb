require 'dish'

describe 'A Dish' do
	it 'has a name' do
		dish = Dish.new("Slowly Digested Penguin", 250)
		expect(dish.name).to eq "Slowly Digested Penguin"
	end

	it 'has a price' do
		dish = Dish.new("Slowly Digested Penguin", 250)
		expect(dish.price).to eq 250
	end
end