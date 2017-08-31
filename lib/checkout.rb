class Checkout
  attr_accessor :items, :cart, :discount

  def initialize
    @items =  {1=> ['tie', 9.25], 2=> ['Sweater', 45.0], 3=> ['skirt', 19.95]}
    @cart = []
    add_items_cart
  end

  def add_items_cart
    if @cart << @items[1]
      'tie added to cart'
    elsif @cart << @items[2]
      'sweater added to cart'
    elsif @cart << @items[3]
      'skirt added to cart'
    else
      'item not available in store'
    end
  end
end
