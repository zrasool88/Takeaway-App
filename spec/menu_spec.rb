require 'menu'

describe 'The Menu' do
	let (:menu){Menu.new}

	it 'List is a hash' do
		expect(menu.list.class).to eq Hash
	end

	it 'Can put dish names and prices into the menu list' do
		menu.add_dish("burger", 3)
		expect(menu.list.empty?).to be false
	end

	it 'Can retrieve values from the list hash using keys' do
		menu.add_dish("burger", 3)
		expect(menu.list.fetch("burger")).to eq 3
	end
end