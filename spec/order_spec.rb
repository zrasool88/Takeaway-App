require 'order'
# require 'dish'
# require 'menu'

describe 'Order' do
	let(:order){Order.new}
  # let(:fish){Dish.new("fish", 10)}
  # let(:chips){Dish.new("chips", 5)}
  # let(:coke){Dish.new("coke", 2)}
  # let(:menu){Menu.new}

	it 'starts with an items hash' do
		expect(order.items.class).to be Hash
	end

  it 'starts with an empty items hash' do
    expect(order.items.empty?).to be true
  end

	it 'is not complete upon initializing' do
		expect(order.complete?).to be false
	end
end
