class Order

  def initialize
    @paid = false
    @customer_order = {}
  end

  attr_reader :customer_order

  def paid?
    @paid
  end

  def pay!
    @paid = true
  end

  def add_item(dish, quantity=1)
    # Touch on this later.
  end

end