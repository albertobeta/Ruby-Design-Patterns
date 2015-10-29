#Template pattern
#Restaurant scenario
#Just 1 pizza with 2 ingredients

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
  end
end

order = Order.new
order.submit_order

