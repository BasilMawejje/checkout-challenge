require './lib/checkout'

describe Checkout do
  it 'has items on initialize' do
    expect(subject.items).to eq ({1=> ['tie', 9.25], 2=> ['Sweater', 45.0], 3=> ['skirt', 19.95]})
  end

  it 'can add items to cart' do
    expect(subject.add_items_cart).to eq 'tie added to cart'
  end
end
