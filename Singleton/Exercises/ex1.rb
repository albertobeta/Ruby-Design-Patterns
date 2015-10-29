#Singleton Pattern 
#module Singleton required

require 'singleton'
require 'observer'

class Inventory
  include Singleton

  def initialize
    @inventory_log = File.open("log.txt", "a")
  end

  def log(msg)
    @inventory_log.puts(msg)
  end
end


class Wine
  include Observable

  attr_reader :number_of_bottles, :inventory_threshold

  def initialize(number_of_bottles = 100, inventory_threshold = 10)
    @number_of_bottles, @inventory_threshold = number_of_bottles, inventory_threshold
    add_observer(InventoryChecker.new)
  end

  def log(number_of_bottles)
    @number_of_bottles -= number_of_bottles
    changed
    notify_observers(self, number_of_bottles)
  end
end


class InventoryChecker
  def update(bottle, number_of_bottles)
    puts "An order of #{number_of_bottles} was placed (#{bottle.number_of_bottles} bottles left in the cellar)"
    #log the order
    Inventory.instance.log("#{number_of_bottles}:#{bottle.number_of_bottles}")
    if bottle.number_of_bottles <= bottle.inventory_threshold
    puts "You need to contact the wine provider and place a new order"
    end
  end
end

bottle = Wine.new()

bottle.log(50)
bottle.log(39)
bottle.log(1)