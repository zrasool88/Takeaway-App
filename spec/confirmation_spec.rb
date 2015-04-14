require 'confirmation'

describe 'Confirmation message' do
  let(:confirmation){Confirmation.new('Hey there!', '+44 1163261886', '+44 123456789')}

  it 'it has a message body' do
    expect(confirmation.body).to eq 'Hey there!'
  end

  it 'has a from number' do
    expect(confirmation.from).to eq '+44 1163261886'
  end

  it 'has a to number' do
    expect(confirmation.to).to eq '+44 123456789'
  end

  it 'confirms once its sent the message' do
  end
end