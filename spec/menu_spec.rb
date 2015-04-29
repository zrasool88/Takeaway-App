require 'spec_helper'
require 'menu'

describe Menu do
  let(:menu) { described_class.new }
  let(:dish) { double :dish, name: 'Slowly Digested Penguin', price: 250 }
  let(:dish2) { double :dish, name: 'Stubborn Seal', price: 500 }

  it 'Dishes is an array' do
    expect(menu.dishes.class).to eq Array
  end

  it 'Can add dish to menu' do
    menu.add(dish)
    expect(menu.dishes.empty?).to be false
  end

  it 'Can remove dish from menu' do
    menu.add(dish)
    menu.remove(dish)
    expect(menu.dishes.empty?).to be true
  end

  it 'Can list all the dishes in the menu' do
    menu.add(dish)
    menu.add(dish2)
    expect(menu.list_dishes).to eq([dish, dish2])
  end
end
