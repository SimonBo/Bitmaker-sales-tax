require_relative "tax.rb"
require_relative "item.rb"

class Register

  def initialize
    @items = []
    @total_tax=0
    @total=0
  end

  def add_item(item)
    @items << item
    item

  end

  def sales_taxes
    @items.each do |item|
      @total_tax+= item.tax
    end 
  end

  def total
    @items.each do |item|
      @total += item.price
    end
  end
  def print_receipt   
    @items.each do |item| 
      puts "#{item.amount} #{item.name}: #{item.price.round(2)}"
      
    end
    puts "Sales Taxes: #{@total_tax.round(2)}"
    puts "Total: #{@total.round(2)}"
  end

end


register = Register.new
n=Item.new

n.add_new_item('book', 1, 10)
n.apply_tax
# n.calculate_total_tax
register.add_item(n)
m=Item.new
m.add_new_item('music CD', 1, 14.99)
m.apply_tax
register.add_item(m)

o=Item.new
o.add_new_item('imported chocolate bar', 1, 0.85)
o.apply_tax
register.add_item(o)

register.sales_taxes
register.total
register.print_receipt








# o.apply_tax

# total_tax.show_sales_taxes
