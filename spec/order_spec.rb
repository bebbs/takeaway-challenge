require 'order'

describe Order do

  let(:order){Order.new('indian')}

  before(:each){order.add_item('korma', 1)}

  it 'should accept a dish' do
    expect(order.customer_order).not_to be_empty
  end

  it 'should accept more than one of a dish' do
    order.add_item('madras', 10)
    expect(order.customer_order.length).to eq 11
  end

  it 'should not accept a dish that isn\'t on the menu' do
    expect(order.add_item('pizza', 1)).to eq 'This dish is not available!'
  end

  context 'verifying the total' do

    before(:each){order.add_item('madras', 2)}

    it 'should have a subtotal' do
      expect(order.subtotal).to eq 29
    end

    it 'should check against the expected subtotal' do
      expect(order.check_subtotal(29)).to be true
    end

  end


end