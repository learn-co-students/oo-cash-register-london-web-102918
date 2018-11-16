class CashRegister

attr_accessor :total, :discount

  def initialization(discount = 0)
  @total = 0
  @discount = discount

  end

  def add_item(title, price)

  self.total += price
  end

  def apply_discount(x)
    if self.discount ||= x
      self.total += self.discount
    else
    end
  end
end
