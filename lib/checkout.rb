class Checkout
  attr_accessor :items, :cart, :discount

  def initialize
    @items =  {1=> ['tie', 9.25], 2=> ['Sweater', 45.0], 3=> ['skirt', 19.95]}
    @cart = []
    add_items_cart
  end

  def add_items_cart
    if @items[1] << @cart
      'tie added to cart'
    elsif @items[2] << @cart
      'sweater added to cart'
    elsif @items[3] << @cart
      'skirt added to cart'
    else
      'item not available in store'
    end
  end
end
