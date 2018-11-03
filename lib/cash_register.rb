require 'pry'

class CashRegister

  attr_accessor :discount, :items, :last_items, :last_item_price

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_items = []
    @last_item_price = 0
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
    self.last_items.clear
    quantity.times {self.last_items.push(item)}
    self.last_item_price = price * quantity
    quantity.times {self.items.push(item)}
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
    self.total -= (self.discount ? self.last_item_price * self.discount.to_f/100 : self.last_item_price)
    self.items.pop(self.last_items.length)
    self.last_items.clear
    self.last_item_price = 0
  end

end


# next step use hashes not arrays to count items
# ! can only void LAST transaction and not more

# Pry.start
