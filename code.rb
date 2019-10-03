require './linked_list_node'

def reverse_list(list, previous=nil)
  next_node = list.next_node
  list.next_node = previous

  next_node ? reverse_list(next_node, list) : list
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
#node1.next_node = node3

if !node3.infinite_loop?()
  node3.print_values()

  reversed = reverse_list(node3)

  reversed.print_values()
else
  puts 'this is an infinite loop'
end
