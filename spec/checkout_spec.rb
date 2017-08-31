require './lib/checkout'
require 'pry-byebug'

describe Checkout do
  it 'has a list of items for sale' do
    expect(subject.items).to be_kind_of Array
  end

  it 'has a cart object containing scanned items' do
    expect(subject.cart).to be_kind_of Array
  end

  context '#total_price' do
    context 'calculates the correct price for items in cart' do
      xit 'case #1' do
        subject.scan('001')
        subject.scan('002')
        subject.scan('003')

        actual_total_price = subject.total_price
        expected_total_price = 66.78

        expect(actual_total_price).to eq expected_total_price
      end

      xit 'case #2' do
        subject.scan('001')
        subject.scan('003')
        subject.scan('001')

        actual_total_price = subject.total_price
        expected_total_price = 36.95

        expect(actual_total_price).to eq expected_total_price
      end
    end

    xit 'case #3' do
      subject.scan('001')
      subject.scan('002')
      subject.scan('001')
      subject.scan('003')

      actual_total_price = subject.total_price
      expected_total_price = 73.76

      expect(actual_total_price).to eq expected_total_price
    end
  end

  context '#scan' do
    it 'adds a single item to the cart' do
      subject.scan('001')

      expected_content = { name: 'tie', price: 9.25, code: '001' }
      actual_content = subject.cart.first

      expect(subject.cart.length).to eq 1
      expect(actual_content).to eq expected_content
    end

    it 'adds a single item to the cart 002' do
      subject.scan('002')

      expected_content = {name: 'sweater', price: 45.00, code: '002'}
      actual_content = subject.cart.first

      expect(subject.cart.length).to eq 1
      expect(actual_content).to eq expected_content
    end

    it 'adds multiple items to the cart' do
      subject.scan('001')
      subject.scan('003')
      subject.scan('001')

      expected_content = [{name: 'tie', price: 9.25, code: '001'}, {name: 'skirt', price: 19.95, code: '003'}, {name: 'tie', price: 9.25, code: '001'}]
      actual_content = subject.cart

      expect(subject.cart.length).to eq 3
      expect(actual_content).to eq expected_content
    end
  end
end
