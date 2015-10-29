#Template pattern
#Restaurant scenario
#1 pizza with 2 ingredients but dough can be also gluten free
#blah implementation

class Order
  def initialize
    @food = "Pizza"
    @ingredients = [ "tomato", "mozzarella" ]
  end
  
  def submit_order(dough_type)
    puts("Submitted: #{@food}")
    puts("Ingredients: ")
    @ingredients.each do |single_ingredient|
      puts("#{single_ingredient}")
    end
    if dough_type == "glutenFree"
      puts("This is a gluten-free pizza")
    elsif dough_type == "standard"
      puts("This is a standard pizza")
    else
      raise "Unknown pizza type #{dough_type}"
    end
  end
end

order = Order.new
order.submit_order "standard"

