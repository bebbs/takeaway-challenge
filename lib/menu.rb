class Menu

  def initialize(name)
    @name = name
    @dish = {}
    @dishes = []
  end

  attr_reader :name, :dish, :dishes

  def add(name, price)
    dishes << (dish[name.to_sym] = price)
  end

end