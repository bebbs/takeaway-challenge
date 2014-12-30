class Dish

  def initialize(name, price)
    @name = name
    @price = price.to_i
  end

  attr_reader :name, :price

end