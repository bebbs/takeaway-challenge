require 'order'

describe Order do

  let(:order){Order.new(Menu.new('indian'))}
  let(:pizza){double :pizza, name: 'pizza', price: 7.00}
  let(:burger){double :burger, name: 'burger', price: 8.00}
  let(:lasagne){double :lasagne, name: 'lasagne', price: 9.00}
  let(:linguine){double :linguine, name: 'linguine', price: 9.00}

  context 'making an order' do

    before(:each){order.add_to_order(pizza, burger, lasagne)}

    it 'should be able to add items to the basket' do
      expect(order.basket.length).to eq 3
    end

    it 'should keep a running subtotal' do
      expect(order.subtotal).to eq 24.00
    end

  end
end