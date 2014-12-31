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
    if verified_dish?(dish)
      quantity.times {customer_order << dish}
    end
  end

  def verified_dish?(dish)
    menu.exists?(dish.name) 
  end

end