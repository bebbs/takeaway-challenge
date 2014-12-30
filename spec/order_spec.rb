require 'order'

describe Order do

  let(:order){Order.new(Menu.new('indian'))}

  context 'making an order' do

    it 'should be able to order an item' do
      order.add_to_order('korma', 3)
      expect(order.basket.length).to eq 3
    end

    it 'should only be able to order from the menu' do
      expect{order.add_to_order('lasagne', 1)}.to raise_error(RuntimeError, 'This dish is not available!')
    end

    it 'should keep a running subtotal' do
      order.add_to_order('korma', 2)
      expect(order.subtotal).to eq 18.00
    end

  end
end