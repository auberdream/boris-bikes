require 'index'

describe Bike do
  it 'returns true when given working? method' do
    expect(Bike.new).to respond_to(:working?)
  end
end
