require 'menu'

describe Menu do
  
  let(:indian_takeaway){Menu.new("indian")}
  let(:korma){double :korma, name: 'korma', price: 9.00}

  context 'basic dish menu' do

    it 'should load the correct menu' do
      expect(indian_takeaway.name).to eq "indian"
    end

    it 'should have a list of dishes' do
      expect(indian_takeaway.dish_count).to eq 3
    end

  end

  context 'verifying dishes' do

    it 'should know if a dish exists' do
      expect(indian_takeaway.exists?("korma")).to be true
    end 

    it 'should know if a dish doesn\'t exist' do
      expect(indian_takeaway.exists?("lamb bhuna")).to be false
    end

  end

end


