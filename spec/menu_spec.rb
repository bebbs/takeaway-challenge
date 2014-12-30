require 'menu'

describe Menu do
  let(:indian_takeaway){Menu.new('indian')}

  it 'should load a menu when instantiated' do
    expect(indian_takeaway.menu_items.length).to be >= 3
  end

  it 'dishes should have a price' do
    expect(indian_takeaway.price('korma')).to eq 9.00
  end

end