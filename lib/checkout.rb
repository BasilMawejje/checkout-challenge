class Checkout
  attr_accessor :items, :total_price

  def initialize
    @items = [{name: 'tie', price: 9.25, code: '001'}, {name: 'sweater', price: 45.00, code: '002'}, {name: 'skirt', price: 19.95, code: '003'}]
  end

  def scan(id)
      
  end
end
