class Menu

  require 'csv'

  def initialize(restaurant)
    @dishes = []
    @name = restaurant
    load_menu(restaurant)
  end

  attr_reader :name, :dishes

  def load_menu(restaurant)
    CSV.foreach("#{restaurant}.csv", {col_sep: ','}) do |line|
      populate_dish(line)
    end
  end

  def populate_dish(item)
    new_dish = Dish.new(item[0], item[1])
    dishes << new_dish
  end

  def dish_count
    dishes.length
  end

  def exists?(dish)
    dishes.any? { |d| d.name == dish }
  end

  def fetch_by_name(dish)
    dishes.select { |d| d.name == dish }.first
  end

end