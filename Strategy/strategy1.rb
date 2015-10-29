#Strategy Pattern
#Restaurant scenario

class Order
  attr_reader :food, :ingredients
  attr_accessor :selection
  
  def initialize(selection)
     @food = "Pizza"
     @ingredients = [ "tomato", "mozzarella" ]
     @selection = selection
  end
  def submit_order
      @selection.submit_order( @food, @ingredients )
  end 
end  
  

class FoodSelection
  def submit_order( food, ingredients )
      raise 'Abstract method called'
  end
end


class StandardPizza < FoodSelection
  def submit_order( food, ingredients )
    puts("Submitted: #{food}")
    puts("Ingredients: ")
    ingredients.each do |single_ingredient|
      puts("#{single_ingredient}")
    end
    puts("This is a standard pizza")
  end
end 

class GlutenFreePizza < FoodSelection
  def submit_order( food, ingredients )
    puts("Submitted: #{food}")
    puts("Ingredients: ")
    ingredients.each do |single_ingredient|
    puts("#{single_ingredient}")
    end
    puts("This is a gluten-free pizza")
  end
end


order = Order.new(StandardPizza.new)
order.submit_order

order.selection  = GlutenFreePizza.new
order.submit_order

