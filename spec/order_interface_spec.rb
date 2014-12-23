require 'order_interface'

describe Order do

  let(:order){Order.new}
  let(:pizza){double :pizza, name: 'pizza', price: 7}
  let(:burger){double :burger, name: 'burger', price: 8}
  let(:lasagne){double :lasagne, name: 'lasagne', price: 9}

  context 'making an order' do

    it 'can add items to an order' do
      order.add_to_order(pizza, burger, lasagne)
      expect(order.basket.length).to eq(3)
    end

  end
end