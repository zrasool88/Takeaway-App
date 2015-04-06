require 'line_item'

describe 'Line Item' do
  let(:line_item){LineItem.new}

  it 'has name of a dish' do
    expect(line_item.dish.name).to eq "chips"
  end

  # it 'has the price of the dish' do

  # end
end