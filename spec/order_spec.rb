require 'order'
require 'dish'
require 'line_item'
require 'customer'

describe 'Order' do
	let(:order){Order.new}
  let(:fish){Dish.new("fish", 10)}
  let(:coke){Dish.new("coke", 1)}
  let(:line_item){LineItem.new(fish, 2)}
  let(:line_item2){LineItem.new(coke, 2)}
  let(:customer){Customer.new("Brian", "0713378008")}

	context 'Upon initializing' do
    it 'has an items array' do
      expect(order.items.class).to be Array
    end

    it 'it has an empty items array' do
      expect(order.items.empty?).to be true
    end
  end

  context 'working with line items' do
    it "is able to add line items" do
      order.add_line_item(line_item)
      expect(order.items.count).to eq 1
    end

    it "is able to remove line items" do
      order.add_line_item(line_item)
      order.remove_line_item(line_item)
      expect(order.items.count).to eq 0
    end

    it "is able to total all line items" do
      order.add_line_item(line_item)
      order.add_line_item(line_item2)
      expect(order.total).to eq 22
    end
  end
end
