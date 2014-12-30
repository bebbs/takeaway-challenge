class Dish

  def initialize(name, price= 0)
    @name = name
    @price = price.to_i
  end

  attr_reader :name, :price

end