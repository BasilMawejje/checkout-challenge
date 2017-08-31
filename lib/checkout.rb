class Checkout
  attr_accessor :items, :cart, :discount

  def initialize
    @items =  {1=> ['tie', 9.25], 2=> ['Sweater', 45.0], 3=> ['skirt', 19.95]}
  end
end
