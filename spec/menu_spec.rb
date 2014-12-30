require 'menu'

describe Menu do
  
  let(:menu){Menu.new("Main")}
  let(:dish1){ double :dish, name: "Korma"}
  let(:dish2){ double :dish, name: "Jalfrezi"}

  before(:each){menu.add(dish1)}

  context 'basic dish menu' do

    it 'should have a name' do
      expect(menu.name).to eq "Main"
    end

    it 'should have a list of dishes' do
      expect{menu.add(dish2)}.to change{menu.dishes.length}.by 1
    end

    it 'should have a count of dishes' do
      expect(menu.dish_count).to eq 1
    end

  end

  context 'verifying dishes' do

    it 'should know if a dish exists' do
      expect(menu.exists?("Korma")).to be true
    end 

    it 'should know if a dish doesn\'t exist' do
      expect(menu.exists?("Lamb Bhuna")).to be false
    end

  end

  context 'finding dishes' do

    it 'should be able to find a dish object by its name' do
      expect(menu.fetch_by_name("Korma")).to eq dish1
    end

  end

end


