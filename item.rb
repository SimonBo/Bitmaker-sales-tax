

class Item 
  attr_accessor :name, :amount, :price, :tax


  def add_new_item(name, amount, price)
    @name=name
    @amount=amount
    @price=price
    @tax=0
  end

  def apply_tax
    
    food = ["chocolate bar", "pizza", "hot-dog"]
    medicine = ["headache pills", "aspirin", "cocaine"]

     unless food.include?(@name) || medicine.include?(@name)  


        @price=@price * 1.1
        @tax +=  @price*0.1
        puts "Applying 10% to #{@name}"
      end
 
    if @name.include?("imported")
      @price=@price * 1.05
      @tax += @price*0.05
      puts "Applying 5% import tax to #{@name}"

    end

  end
end
