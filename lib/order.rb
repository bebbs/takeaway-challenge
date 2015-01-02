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

  def add_to_order(dish, quantity=1)
    verified_dish?(dish) ? (quantity.times {customer_order << dish}) : (return "This dish is not available!")
  end

  def verified_dish?(dish)
    menu.exists?(dish.name) 
  end

end