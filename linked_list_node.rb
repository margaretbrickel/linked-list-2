class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def print_values()
    print "#{self.value} --> "
    if self.next_node
      self.next_node.print_values()
    else
      print "nil\n"
    end
  end

  def infinite_loop?()
    tortoise = self.next_node
    hare = self.next_node

    until hare.nil?
      hare = hare.next_node
      return false if hare.nil?

      hare = hare.next_node
      tortoise = tortoise.next_node
      return true if hare == tortoise
    end

    return false
  end
end