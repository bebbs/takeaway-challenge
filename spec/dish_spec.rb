require 'dish'

describe Dish do
  let(:dish){Dish.new("Korma", 9.00)}
  let(:madras){Dish.new("Madras")}

  it 'should have a name' do
    expect(dish.name).to eq "Korma"
  end

  it 'should have a price of 0 by default' do
    expect(madras.price).to eq 0
  end

  it 'should have a price' do
    expect(dish.price).to eq 9
  end

end