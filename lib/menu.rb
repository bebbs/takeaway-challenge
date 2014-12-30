class Menu

  def initialize(name)
    @name = name
    @dish = {}
    @dishes = []
  end

  attr_reader :name, :dish, :dishes

  def add(dish)
    dishes << dish
  end

  def dish_count
    dishes.length
  end

  def exists?(dish)
    dishes.any? { |d| d.name == dish }
  end

  def fetch_by_name(dish)
    dishes.select { |d| d.name == dish}.first
  end

end