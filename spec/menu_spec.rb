require 'menu'

describe Menu do
  
  let(:menu){Menu.new("Main")}
  it 'should have a name' do
    expect(menu.name).to eq "Main"
  end

  it 'should have a list of dishes' do
    menu.add("Korma", 9.00)
    expect(menu.dishes.length).to eq 1
  end

  it 'should count its dishes' do
  end

end