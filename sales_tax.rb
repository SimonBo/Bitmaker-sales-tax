class Item < Tax
  attr_accessor :name, :amount, :price

  
  def initialize (name, amount, price)
    @name=name
    @amount=amount
    @price=price
    # @tax=0
  end

  # def show_receipt

  #   shopping_cart=[@amount, @name, @price*@amount]
  # end

  # def apply_tax
  #   food = ["chocolate bar", "pizza", "hot-dog"]
  #   medicine = ["headache pills", "aspirin", "cocaine"]

  #    unless food.include?(@name) || medicine.include?(@name)     
  #       @price=@price * 1.1
  #       @tax += @price*0.1
  #       # puts "Applying 10% to #{@name}"
  #     end
 
  #   if @name.include?("imported")
  #     @price=@price * 1.05
  #     @tax += @price*0.05
  #     # puts "Applying 5% import tax to #{@name}"

  #   end

  #   puts "#{@amount} #{@name}: #{@price} "
  #   puts "Sales tax: #{@tax}"
  # end
  

end

class Tax 

  def initialize
    @total_tax=0
  end
  def apply_tax
    food = ["chocolate bar", "pizza", "hot-dog"]
    medicine = ["headache pills", "aspirin", "cocaine"]

     unless food.include?(@name) || medicine.include?(@name)     
        @price=@price * 1.1
        @total_tax += @price*0.1
        # puts "Applying 10% to #{@name}"
      end
 
    if @name.include?("imported")
      @price=@price * 1.05
      @total_tax += @price*0.05
      # puts "Applying 5% import tax to #{@name}"

    end

    puts "#{@amount} #{@name}: #{@price} "
  end


  def show_sales_taxes
        puts "Sales tax: #{@total_tax}"
  end
end
# class Shopping_cart

#   def initialize
    
#   end

# class Tax < Item
  
  
  

#   def method_name
    
#   end
  
# end
# input=[:one, ['book', 1, 10], :two, ['music CD', 1, 14.99], :three, ['chocolate bar', 1, 0.85]]
# input.each do |k, v| 
#   v.each do 
#   k = Item.new(v)

# input=['book', 1, 10]
# input.each {|x| }
total_tax = Tax.new
n=Item.new('book', 1, 10)
n.apply_tax

m=Item.new('music CD', 1, 14.99)
m.apply_tax

o=Item.new('chocolate bar', 1, 0.85)
o.apply_tax

total_tax.show_sales_taxes
















