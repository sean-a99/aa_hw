class MyQueue

def initialize
  @data = []
end

def enqueue(el)
  @data << el
end

def dequeue
  @data.shift
end

def peek
  @data[0]
end

end

q = MyQueue.new
# p q

q.enqueue(6)
q.enqueue(10)
p q

p q.peek
q.dequeue
p q