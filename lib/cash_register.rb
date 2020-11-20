class CashRegister
    
    attr_accessor :total, :discount, :cart, :last_transaction
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end 
    
    def total
        @total
    end 
    
    def add_item(title,price,quantity = 1)
       @cart ||= []
       @total += price * quantity
       quantity.times do
           @cart << title
       end 
       @last_transaction = price * quantity
    end 
    
    def apply_discount
        @total = @total - @total * @discount/100
        if @discount > 0
            "After the discount, the total comes to $#{@total}."
        else 
            "There is no discount to apply."
        end 
    end 
    
    def items
        @cart
    end 
    
    def void_last_transaction
        @total = @total - @last_transaction
    end 
    
end
