require 'menu'

describe Menu do
  let(:menu){Menu.new('indian')}

  it 'should load a menu when instantiated' do
    expect(menu.menu_items.length).to be >= 3
  end

  it 'dishes should have a name' do
    expect(menu.read.first.has_value?('korma')).to be true
  end

end