require 'dish'

describe Dish do
  let(:dish){Dish.new("Korma", 9.00)}
  it 'should have a name' do
    expect(dish.name).to eq "Korma"
  end

end