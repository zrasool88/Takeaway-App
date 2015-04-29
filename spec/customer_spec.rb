require 'spec_helper'
require 'customer'

describe Customer do
  let(:customer) { described_class.new('Zeeshan', '07451234567') }
  
  it 'has a name' do
    expect(customer.name).to eq 'Zeeshan'
  end

  it 'has a contact number' do
    expect(customer.phone_number).to eq '07451234567'
  end

  it 'can pay for their order' do
    expect(customer.pay(30)).to eq 30
  end
end
