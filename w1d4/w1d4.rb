# Exercise 1 - Stack
#
# Let's write a Stack class. To do this, use the following framework:
#
  class Stack
    attr_reader :stack

    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def add(el)
      # adds an element to the stack
      @stack << el
      el
    end

    def remove
      # removes one element from the stack
      @stack.pop
    end

    def show
      # return a copy of the stack
      @stack.dup
    end
  end
# To test that your code works, create a new instance of the Stack class,
# and play around with adding and removing elements.
# Remember, a stack follows the principle of LIFO!

stack = Stack.new
p stack.show
p stack.add(1)
p stack.add(2)
p stack.show
p stack.remove
p stack.add(3)
p stack.show
p stack.remove
p stack.show
# #
# Exercise 2 - Queue
#
# Now let's write a Queue class. We will need the following
# instance methods: enqueue(el), dequeue, and show.

class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end

end
#
# Test your code to ensure it follows the principle of FIFO.
queue = Queue.new
p queue
p queue.enqueue("a")
p queue.enqueue("b")
p queue.show
p queue.enqueue("c")
p queue.dequeue
p queue.show

#
# Exercise 3 - Map
#
# As you saw in the videos for tonight, a map can be implemented
# using a 2D array. Let's write a Map class (following a similar
# pattern to Stack and Queue) that implements a map using only arrays.
#
# Remember, a map stores information in key-value pairs,
# where the keys are always unique. When implemented with arrays,
# a map might look something like this:
# my_map = [[k1, v1], [k2, v2], [k3, v2], ...].
#
# Our Map class should have the following instance
# methods: assign(key, value), lookup(key), remove(key), show.
# Note that the assign method can be used to either create a
# new key-value pair or update the value for a pre-existing key.
# It's up to you to check whether a key currently exists!
#
# As always, test your code thoroughly to make sure all properties
# of maps are enforced.
require 'byebug'
class Map
  attr_reader :map

  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value] if @map.empty?
    @map.each do |arr|
      if arr.first == key
        arr[1] = value
        break
      else
        @map << [key, value]
      end
    end
    [key, value]
  end

  def lookup(key)
    @map.each do |arr|
      return arr[1] if arr[0] == key
    end
  end

  def remove(key)
    @map.each do |arr|
      if arr.first == key
        @map.delete(arr)
      end
    end
  end

  def show
    @map
  end
end

map = Map.new
p map
p map.assign("a", 1)
p map.assign("b", 2)
p map.assign("a", 3)
p map.lookup("b")
p map
p map.remove("a")
p map
