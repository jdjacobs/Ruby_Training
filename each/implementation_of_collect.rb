require 'pp'

class LineItem
  attr_accessor :amount
  def initialize(amount)
    @amount = amount
  end
end

class Array
  def super_collect(&blk)
    i = 0
    new_array = [] # initialize the new array
    
    while (i < self.length)
      value = yield(self[i]) # store the value returned by the block
      new_array << value # add the return value to the array we're building up
      i += 1
    end
    
    return new_array # return the completed new array
  end
end


the_array = [3, 4, 5, 6, 7].super_collect do |number|
  if number > 5
    3
  else
    number
  end
end

pp the_array