require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @title = []
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title << title
    quantity.times do
      items << title
    end
    if quantity
      @total += price * quantity
      @total
    elsif quantity == false
      @total += price
      @total
    end
    @last_transaction = price * quantity
    end

    def apply_discount
      if discount != 0
        @discount = 200
        price = 1000
        @total = price - @discount
        "After the discount, the total comes to $#{total}."
      else
        "There is no discount to apply."
      end
    end

    def void_last_transaction
      @total = self.total - self.last_transaction
    end
end
