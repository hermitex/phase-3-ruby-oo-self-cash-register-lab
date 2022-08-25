class CashRegister
  attr_accessor :total, :discount, :items
  @@total = 0
  @items = []
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=0)
    self.total += price
    @quantity = quantity
    @items << title
  end

  def discount
    @discount > 0 ? @discount  - self.total : nil
  end

  def total
    @total
  end

  def items
    @items
  end
end
