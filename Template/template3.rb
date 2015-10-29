#Template method
#Restaurant scenario
#1 pizza with 2 ingredients but dough can be also gluten free
#template method

class Order
  def initialize
    @food = "Pizza"
    @ingredients = [ "tomato", "mozzarella" ]
  end
  
  def submit_order
    puts("Submitted: #{@food}")
    puts("Ingredients: ")
    @ingredients.each do |single_ingredient|
      puts("#{single_ingredient}")
    end
    dough_type
  end
end

class StandardPizza < Order
  def dough_type
    puts("This is a standard pizza")
  end
end
    
class GlutenFreePizza < Order
  def dough_type
    puts("This is a gluten-free pizza")
  end
end

order = GlutenFreePizza.new
order.submit_order

order = StandardPizza.new
order.submit_order

