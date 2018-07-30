# Code your cash register here!
class AmazonTransaction
  
  attr_accessor :total,:items , :discount 

  def initialize (total = 0 )
    @total = 0
    @items = []
    @discount = 20
    
  end
  
  def add_item (title, price, quantity = 1)
    
    @total += price*quantity 
    
    count = 0 
    until count > quantity
      count +=1 
      @items << title 
    end
    
    
    def apply_discount
      discount = (@discount/100.00)*@total 
      new_total = @total - discount 
      @total = new_total 
    
    end
    
  end
  
end 

  amazon_transaction= AmazonTransaction.new(100)
  puts amazon_transaction
  
  
  
    
  
  
  
  
