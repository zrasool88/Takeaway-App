require 'takeaway'
require 'customer'
require 'order'
require 'dish'
require 'line_item'

describe Takeaway do
  let(:takeaway){Takeaway.new}
  let(:customer){Customer.new("Zeeshan", "07941234584")}
  let(:order){Order.new}
  let(:fish){Dish.new("fish", 10)}
  let(:coke){Dish.new("coke", 5)}
  let(:line_item){LineItem.new(fish, 2)}
  let(:line_item2){LineItem.new(coke, 2)}

  before do
    order.add_line_item(line_item)
    order.add_line_item(line_item2)
  end

  context "process order" do
    it "verifies that the payment is correct" do
      customer.pay(30)
      expect(takeaway.correct_payment?(customer, order)).to be true
    end

    it "if payment is not correct it should raise an error" do
      customer.pay(29)
      expect{takeaway.verify_payment(customer, order)}.to raise_error (RuntimeError)
    end

    it "sends a confirmation text message" do
    end
  end
end