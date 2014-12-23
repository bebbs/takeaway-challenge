class Order

  def initialize
    @basket = []
  end

  attr_reader :basket

  def add_to_order(*args)
    args.each do |item|
      @basket << item
    end
  end

end