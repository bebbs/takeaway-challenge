class Menu

  require 'csv'

  def initialize(restaurant)
    @menu_items = []
    load_menu(restaurant)
  end

  attr_accessor :menu_items

  def load_menu(restaurant)
    CSV.foreach("#{restaurant}.csv", {col_sep: ','}) do |line|
      item = line[0]
      price = line[1]
      @menu_items << {dish: item, price: price}
    end
  end

end