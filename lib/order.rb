class Order

  def initialize menu
    @basket = []
    @menu = menu
  end

  attr_reader :basket, :menu

  def add_to_order(*args)
    args.each do |item|
      basket << item
    end
  end

  def subtotal
    arr = basket.map {|x| x.price}
    arr.inject(:+).to_f
  end

end