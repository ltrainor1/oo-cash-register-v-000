class CashRegister 
  
  @@items = []
  @@prices = []
  
  attr_accessor :discount, :discounted_total
  
def initialize(discount = 0)
  @total = 0 
  @discount = discount
end 

def add_item(item, price, quantity = 1)
  @@items << item 
  add_on = price * quantity
  @@prices << add_on
  @total += add_on
end 

def apply_discount
  if @discount == 0 
    message = "There is no discount to apply."
  else 
    @total = @total * ((100 - @discount)/100) 
    message = "After the discount, the total comes to $#{@total}."
end 
message
end 

def items 
  @@items 
end 

def void_last_transaction 
  @@items.pop

  @total = total - @@prices.last 
  @@prices.pop
  @total 

end 

end 