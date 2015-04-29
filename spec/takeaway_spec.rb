require 'spec_helper'
require 'takeaway'
require 'order'
require 'line_item'
require 'customer'

describe Takeaway do
  let(:takeaway) { described_class.new }
  let(:customer) { Customer.new('Zeeshan', '07941234584') }
  let(:order) { Order.new }
  let(:fish) { double :dish, name: 'fish', price: 10 }
  let(:coke) { double :dish, name: 'coke', price: 5 }
  let(:line_item) { LineItem.new(fish, 2) }
  let(:line_item2) { LineItem.new(coke, 2) }

  before do
    order.add_line_item(line_item)
    order.add_line_item(line_item2)
  end

  it 'can send a confirmation text message' do
    expect(takeaway.send_text(environment = 'testing')).to eq 'Message Sent Successfully'
  end

  context 'accepting orders' do
    it 'can accept an order' do
      expect do
        takeaway.accept(order)
      end.to change { takeaway.orders.count }.by(1)
    end

    it 'cannot accept an empty order' do
      my_order = Order.new
      expect { takeaway.accept(my_order) }.to raise_error(RuntimeError)
    end
  end

  context 'verifying payment' do
    it 'verifies that the payment is correct' do
      customer.pay(30)
      expect(takeaway.correct_payment?(customer, order)).to be true
    end

    it 'if payment is not correct it raises an error' do
      customer.pay(29)
      expect do
        takeaway.verify_payment(customer, order)
      end.to raise_error(RuntimeError)
    end
  end

  context 'processing order' do
    before do
      customer.pay(30)
    end

    it 'processes order only when payment is correct' do
      expect(takeaway.process_order(customer, order)).to eq 'Order Processed'
    end

    it 'upon processing the orders it removes the order from queue' do
      takeaway.accept(order)
      expect do
        takeaway.process_order(customer, order)
      end.to change { takeaway.orders.count }.by(-1)
    end
  end
end
