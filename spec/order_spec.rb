require 'order'

describe Order do

  let(:order){Order.new(Menu.new('indian'))}

  context 'making an order' do

    it 'should be able to order from the menu' do
      add_to_order()
      expect(order.basket).to eq 3
    end

    it 'should keep a running subtotal' do
      order.add_to_order(pizza,burger,lasagne)
      expect(order.subtotal).to eq 24.00
    end

  end
end