class OrderInterface

  def initialize(restaurant)
    @order = Order.new(restaurant)
    @menu = order.menu
    option_menu
  end

  attr_reader :order, :menu

  def option_menu
    loop do
      print_options_list
      handle(input)
    end
  end

  def input
    print "Input: "
    STDIN.gets.chomp
  end

  def print_options_list
    puts '1. View the menu'
    puts '2. Order a dish'
    puts '3. View order'
    puts '4. Confirm your order'
    puts '5. Quit'
  end

  def handle(option)
    case option
      when '1' then display_menu
      when '2' then add_to_order
      when '3' then view_order
      when '4' then confirm_order
      when '5' then exit
      else puts 'Sorry, that input is not recognised.'
    end
  end

  def display_menu
    puts 'Dish: | Price:'
    puts '--------------'
    menu.dishes.each do |dish|
      puts "#{dish.name}: £#{dish.price}"
    end
    puts '--------------'
  end

  def add_to_order
    puts 'Which dish would you like to order?'
    print 'Enter the dish name: '
    name_input = STDIN.gets.chomp 
    print 'Quantity: '
    quantity_input = STDIN.gets.chomp
    order.add_item(name_input, quantity_input.to_i)
  end

  def view_order
    puts 'Your order:'
    puts '--------------'
    order.customer_order.each do |dish|
      puts "#{dish.name}: #{dish.price}"
    end
    puts '--------------'
  end

  def confirm_order
    view_order
    puts 'To confirm your order, please enter the expected total:'
    if order.subtotal == order.check_subtotal(input)
      order.send_text
    else
      raise 'Order not confirmed, subtotal doesn\'t match the expected value.'
    end
  end

end

int = OrderInterface.new('indian')
