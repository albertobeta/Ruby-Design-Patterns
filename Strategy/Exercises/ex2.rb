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
      puts("Submitted: #{food}")
      puts("Ingredients: ")
      ingredients.each do |single_ingredient|
        puts("#{single_ingredient}")
      end
      #puts("Dough Type: #{dough_type}")
    end
end


class StandardPizza < FoodSelection
end 

class GlutenFreePizza < FoodSelection
end

class Bruschetta < FoodSelection
   
   def initialize
     @food = "Bruschetta"
     @ingredients = [ "tomato", "garlic", "oregano"]
     submit_order( @food, @ingredients )
   end
   
end

order = Order.new(StandardPizza.new)
order.submit_order

order.selection  = Bruschetta.new

order.selection  = GlutenFreePizza.new
#order.submit_order

