#Inventory log
#without Singleton pattern

class Inventory
  
  def initialize(log_file_name)
    @inventory_log = File.open(log_file_name, "a")
  end

  def log(msg)
    @inventory_log.puts(msg)
  end
end

inventory1 = Inventory.new("log1.txt")
inventory2 = Inventory.new("log2.txt")

inventory1.log('wine:1')
inventory1.log('wine:4')

inventory2.log('wine:2')
inventory2.log('pizza:3')

