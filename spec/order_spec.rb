require 'order'

describe 'Order' do
	let(:order){Order.new}

	it 'starts with an empty items array' do
		expect(order.items.empty?).to be true
	end

	it 'is not complete at the beginning' do
		expect(order.complete?).to be false
	end
end
