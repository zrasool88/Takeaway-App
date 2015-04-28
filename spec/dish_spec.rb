require 'dish'

describe Dish do
  let(:dish) { described_class.new('Slowly Digested Penguin', 250) }

  it 'has a name' do
    expect(dish.name).to eq 'Slowly Digested Penguin'
  end

  it 'has a price' do
    expect(dish.price).to eq 250
  end
end
