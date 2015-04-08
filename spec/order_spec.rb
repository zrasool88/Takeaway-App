require 'order'
require 'dish'
require 'line_item'

describe 'Order' do
	let(:order){Order.new}
  let(:fish){Dish.new("fish", 10)}
  let(:line_item){LineItem.new(fish, 2)}
  # let(:coke){Dish.new("coke", 2)}
  # let(:menu){Menu.new}

	it 'starts with an items array' do
		expect(order.items.class).to be Array
	end

  it 'starts with an empty items hash' do
    expect(order.items.empty?).to be true
  end

	it 'is not complete upon initializing' do
		expect(order.complete?).to be false
	end

  it "able to retrieve line items to and include it within itself" do
    order.add_line_item(line_item)
    expect(order.items.count).to eq 1
  end
end
