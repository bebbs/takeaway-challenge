require 'order'

describe Order do

  let(:order){Order.new}
  let(:dish){double :dish, name: 'korma', price: 20}

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


end