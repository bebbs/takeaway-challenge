require 'dish'

describe Dish do

  let(:pizza){Dish.new('pizza', 7)}

  it 'should be created with a name' do
    expect(pizza.name).to eq 'pizza'
  end

  it 'should be created with a price' do
    expect(pizza.price).to eq 7
  end
  
end