require 'menu'

describe Menu do
  let(:menu){Menu.new}
  let(:pizza){double :pizza, name: 'pizza', price: 7}
  let(:lasagne){double :lasagne, name: 'lasagne', price: 9}

  it 'should have a list of items' do
    menu.add_items(pizza, lasagne)
    expect(menu.menu_items).to eq([pizza, lasagne])
  end

end