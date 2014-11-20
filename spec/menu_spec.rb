require 'menu'
require 'dish'

describe 'The Menu' do
	let (:menu){Menu.new}
	let (:dish){Dish.new("Slowly Digested Penguin", 250)}
	let (:dish2){Dish.new("Rapist Seal", 500)}

	it 'Dishes is an array' do
		expect(menu.dishes.class).to eq Array
	end

	it 'Can add dish to menu' do
		menu.add(dish)
		expect(menu.dishes.empty?).to be false
	end

	it 'Can remove dish from menu' do
		menu.add(dish)
		menu.remove(dish)
		expect(menu.dishes.empty?).to be true
	end

	it 'Can list all the dishes in the menu' do
		menu.add(dish)
		menu.add(dish2)
		expect(menu.list_dishes).to eq([dish, dish2])
	end
end