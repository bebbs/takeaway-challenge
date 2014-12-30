class Order

  def initialize menu
    @basket = []
    @menu = Menu.new('indian')
  end

  attr_reader :basket, :menu

  def add_to_order(dish, quantity)
    verify_item(dish)
    quantity.times { basket << dish }
  end

  def subtotal
    arr = []
    basket.each do |item|
      arr << menu.price(item)
    end
    arr.inject(:+).to_f
  end

  def verify_item(dish)
    raise 'This dish is not available!' unless menu.has_item?(dish)
  end

end