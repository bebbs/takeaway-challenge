class Menu

  def initialize
    @menu_items = []
  end

  attr_reader :menu_items

  def add_items(*args)
    args.each do |item|
      @menu_items << item
    end
  end

end