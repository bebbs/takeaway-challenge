require 'menu'
require 'dish'
require 'order'

class OrderInterface

  def initialize(restaurant)
    Order.new(restaurant)
  end

  def option_menu
    loop do
      print_options_list
      handle(STDIN.gets.chomp)
    end
  end

  def print_options_list
    puts '1. View the menu'
    puts '2. Order a dish'
    puts '3. View order'
    puts '4. Delete an item from the order'
    puts '5. Delete the whole order'
    puts '6. Confirm your order'
    puts '7. Quit'
  end

  def handle(option)
    case option
      when '1' then display_menu
      when '2' then add_to_order
      when '3' then view_order
      when '4' then delete_an_item
      when '5' then clear_order
      when '6' then confirm_order
      when '7' then quit_takeaway
      else puts 'Sorry, that input is not recognised.'
    end
  end

end
