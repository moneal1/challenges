class LinkedList
    attr_accessor :head

    def initialize(value)
        @head = LinkedListNode.new(value)
    end

    def append(value)
        current_element = @head
        while current_element.next_node !=nil
            current_element = current_element.next_node
        end

        current_element.next_node = LinkedListNode.new(value)
    end

    def reverse_list(list, previous=nil)
        previous = @head
        current_element = previous.next_node
        next_element = current_element.next_node
        previous.next_node = nil
        while true
            current_element.next_node = previous
            if current_element.next_node = nil
                current_element = @head
                break
            end         
            next_element = next_element.next_node
            current_element = current_element.next_node
            previous = previous.next_node
        end            
       
    end
end


        



class LinkedListNode
    attr_accessor :value, :next_node


    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end
    # Push a value onto the stack
    def push(value) 
       @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack
    # remove the last item that was pushed 
    # onto the stack and return the value
    def pop
        return print "nil/n" if @data.nil?
        print "#{@data.value}/n"
        @data = @data.next_node
    end

end

    

    


def print_values(list_node)
    if list_node
        print "#{list_node.value} --> "
        print_values(list_node.next_node)
    else
        print "nil/n"
        return
    end 
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3
print_values(node3)
puts ""
revlist = reverse_list(node3)
print_values(revlist)
