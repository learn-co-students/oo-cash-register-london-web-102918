class CashRegister

attr_accessor :total, :discount, :title, :quantity, :items, :price, :last_t

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @quantity = quantity
    @items = []
  end

  def add_item(title, price, quantity = 1)
      self.total += price * quantity
      quantity.times do
        @items << title
      end
      self.last_t = price * quantity
  end

  def apply_discount
    if discount > 0
      self.total = total - total * discount/100
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_t
  end

end
