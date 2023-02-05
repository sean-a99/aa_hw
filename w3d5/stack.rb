#Exercise 1 - Stack

class Stack

  def initialize
    @data = []
  end

  def push(el)
    @data << el
  end

  def pop
    @data.pop
  end

  def peek
    @data[-1]
  end

  def inspect
    self.object_id.inspect
  end


end

my_stack = Stack.new

my_stack.push(3)
my_stack.push(7)
p my_stack.peek

my_stack.pop
p my_stack.peek

