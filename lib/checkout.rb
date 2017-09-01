class Checkout
  attr_accessor :items, :cart

  def initialize
    @items = [{name: 'tie', price: 9.25, code: '001'}, {name: 'sweater', price: 45.00, code: '002'}, {name: 'skirt', price: 19.95, code: '003'}]
    @cart = []
  end

  def scan(code)
    @cart << @items.detect{ |item| item[:code] == code}
  end

  def total_price
    total = 0

    @cart.each do |item|
      total += item[:price]
    end

=begin    @cart.select { |item| item[:code] == '001'}
    if @cart.length >= 2
      @items[1][:price] = 8.5
    end
=end    
    if total > 60
      total = total - (0.1 * total)
    end

    total
  end
end
