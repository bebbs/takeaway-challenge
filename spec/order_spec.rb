require 'order'

describe Order do

  let(:order){Order.new('indian')}
  let(:dish){double :dish, name: 'korma', price: 9}
  let(:pizza){double :bad_dish, name: 'pizza', price: 10}

  it 'should not be paid on creation of an order' do
    expect(order.paid?).to be false
  end

  it 'can be paid' do
    order.pay!
    expect(order).to be_paid
  end

  it 'should accept a dish' do
    order.add_item(dish)
    expect(order.customer_order).not_to be_empty
  end

  it 'should not accept a dish that isn\'t on the menu' do
    expect(order.add_item(pizza, 1)).to eq "This dish is not available!"
  end


end