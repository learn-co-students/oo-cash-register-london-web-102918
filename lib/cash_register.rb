require 'pry'

class CashRegister

  attr_accessor = :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def discount=(discount)
    @discount = discount
  end

  def total
    @total
  end

  def total=(total)
    @total = total
  end

  def add_item(item, price, quantity = 1)
    quantity.times {@items.push(item)}
    self.total += price * quantity
  end

  def apply_discount
    self.total = self.total - (self.total*(self.discount.to_f/100)) if self.discount
    self.discount ? "After the discount, the total comes to $#{self.total.to_i}." : "There is no discount to apply."
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.add_item
  end

end
