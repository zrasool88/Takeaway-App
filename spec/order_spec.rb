require 'order'
require 'dish'
require 'line_item'

describe 'Order' do
	let(:order){Order.new}
  let(:fish){Dish.new("fish", 10)}
  let(:coke){Dish.new("coke", 1)}
  let(:line_item){LineItem.new(fish, 2)}
  let(:line_item2){LineItem.new(coke, 2)}

	it 'starts with an items array' do
		expect(order.items.class).to be Array
	end

  it 'starts with an empty items array' do
    expect(order.items.empty?).to be true
  end

	it 'is not complete upon initializing' do
		expect(order.complete?).to be false
	end

  it "is able to add line items" do
    order.add_line_item(line_item)
    expect(order.items.count).to eq 1
  end

  it "is able to remove line items" do
    order.add_line_item(line_item)
    order.remove_line_item(line_item)
    expect(order.items.count).to eq 0
  end

  it "is able to get subtotal of a line item" do
    order.add_line_item(line_item)
    expect(order.line_total(line_item)).to eq 20
  end

  it "is able to total all line items" do
    order.add_line_item(line_item)
    order.add_line_item(line_item2)
    expect(order.total).to eq 22
  end
end
