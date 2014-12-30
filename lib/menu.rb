class Menu

  require 'csv'

  def initialize(restaurant)
    @menu = {}
    @menu_items = []
    load(restaurant)
  end

  attr_reader :menu, :menu_items

  def load(restaurant)
    CSV.foreach("#{restaurant}.csv", {col_sep: ','}) do |line|
      item = line[0]
      price = line[1].to_f
      menu[item.to_sym] = price
      menu_items << menu.keys.to_s
    end
  end

  def has_item?(item)
    menu.has_key?(item.to_sym)
  end

  def price(item)
    menu[item.to_sym].to_f
  end

end