class Order

  def initialize(restaurant)
    @paid = false
    @customer_order = []
    @menu = Menu.new(restaurant)
  end

  attr_reader :customer_order, :menu

  def paid?
    @paid
  end

  def pay!
    @paid = true
  end

  def add_item(dish, quantity=1)
    dish_object = menu.fetch_by_name(dish)
    verified_dish?(dish) ? (quantity.times {customer_order << dish_object}) : (return "This dish is not available!")
  end

  def verified_dish?(dish)
    menu.exists?(dish) 
  end

  def subtotal
    price_arr = customer_order.map {|item| item.price}
    price_arr.inject(:+)
  end

  def check_subtotal(number)
    number == subtotal
  end

end