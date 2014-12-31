class Menu

  require 'csv'

  def initialize(restaurant)
    @menu = menu
    @dish = {}
    @dishes = []
    @name = restaurant
    load_menu(restaurant)
  end

  attr_reader :name, :menu, :dish, :dishes

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

end