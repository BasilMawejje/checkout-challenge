class Checkout
  attr_accessor :items, :cart

  def initialize
    @items = [{name: 'tie', price: 9.25, code: '001'}, {name: 'sweater', price: 45.00, code: '002'}, {name: 'skirt', price: 19.95, code: '003'}]
    @cart = []
  end

  def scan(code)
    @cart << @items.detect{ |item| item[:code] == code}
  end
end
