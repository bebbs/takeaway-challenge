require 'menu'

describe Menu do
  let(:menu){Menu.new('indian')}

  it 'should load a menu when instantiated' do
    expect(menu.menu_items.length).to be >= 3
  end

  it 'dishes should have a name' do
    expect(menu.menu_items.first[:dish]).to eq 'korma'
  end

  it 'dishes should have a price' do
    expect(menu.menu_items.first[:price]).to eq 9.00
  end

end