#Singleton Pattern 
#module Singleton required

require 'singleton'

class Inventory
  include Singleton

  def initialize
    @inventory_log = File.open("log.txt", "a")
  end

  def log(msg)
    @inventory_log.puts(msg)
  end
end

Inventory.instance.log('wine:1')
Inventory.instance.log('wine:4')
Inventory.instance.log('wine:2')
Inventory.instance.log('pizza:3')

#inventory = Inventory.new()