#Listas enlazadas
#Estructura de datos lineal donde cada objeto, llamados nodos, esta enlazado a su predecesor y a veces con su sucesor

class LinkedList

  def initialize
    @head = @tail = nil
  end

  def add value
    node = Node.new(value)
    @head = node if @head.nil?
    @tail.next = node unless @tail.nil?
  end

end

class Node

  def initialize(value)
    @value = value
    @next = nil
  end

  def next
    @next
  end

  def next=(value)
    @next = value
  end

end

list = LinkedList.new()
list.add(1)
# => current: 1, head: true, tail: true, next: nil
list.add(2)
# => current: 2, head: false, tail: true, next: nil
list.add(3)
# => current: 3, head: false, tail: true, next: nil